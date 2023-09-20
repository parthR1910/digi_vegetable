import 'package:digi_vegetable/frame_work/controller/auth_controller/register/register_details_controller.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../../utils/common_widget/common_button.dart';
import '../../../../utils/common_widget/common_text_form_field.dart';
import '../../../../utils/form_validation.dart';
import '../../../../utils/theme/app_colors.dart';

class RegisterDetailsForm extends StatelessWidget {
  const RegisterDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final registerDetailWatch = ref.watch(registerDetailsController);
      return Form(
        key: registerDetailWatch.registerDetailsKey,
        child: Column(
          children: [
            CommonTextFormField(
              controller: registerDetailWatch.nameController,
              hintText: "Full Name",
              validator: nameValidator,
              prefixIcon: Image.asset(AppAssets.emailIcon,scale: 18,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 10.h,),
            CommonTextFormField(
              readOnly: true,
              onTap: ()=>registerDetailWatch.pickDate(context),
              controller: registerDetailWatch.birthDateController,
              hintText: "Date of Birth",
              prefixIcon:  const Icon(Icons.date_range_outlined,color: AppColors.hintTextColor,size: 28,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 10.h,),
            CommonTextFormField(
              maxLength: 10,
              controller: registerDetailWatch.phoneController,
              hintText: "Phone",
              validator: phoneValidator,
              keyboardType: TextInputType.phone,
              prefixIcon: const Icon(Icons.call,color: AppColors.hintTextColor,size: 28,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 280.h,),
            Row(
              children: [
                Expanded(child: CommonButton(onTap: (){
                  registerDetailWatch.skipButton(context);
                }, btnText: "Skip",border: Border.all(color: AppColors.primary,width: 1.5),backgroundColor: AppColors.white,txtColor: AppColors.primary,)),
                SizedBox(width: 4.w,),
                Expanded(child: CommonButton(onTap: (){
                  registerDetailWatch.continueButton(context);
                }, btnText: "Continue")),
              ],
            )
          ],
        ),
      );
    },);
  }
}
