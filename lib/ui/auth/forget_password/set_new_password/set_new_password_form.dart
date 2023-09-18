import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../../../frame_work/controller/auth_controller/forget_pass/forgerpass_controller.dart';
import '../../../utils/common_widget/common_button.dart';
import '../../../utils/common_widget/common_text_form_field.dart';
import '../../../utils/form_validation.dart';
import '../../../utils/theme/app_assets.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class SetNewPasswordForm extends StatelessWidget {
  const SetNewPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final forgetPassWatch = ref.watch(forgetPassController);
      return Form(
        key: forgetPassWatch.setNewPassKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Set New Password",style: TextStyles.w600.copyWith(fontSize: 20.sp,color: AppColors.black),),
            Text("Your new password must be different from previous password.",style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),),
            SizedBox(height: 30.h,),
            CommonTextFormField(
              controller: forgetPassWatch.newPasswordController,
              hintText: "Enter New Password",
              validator: passValidator,
              prefixIcon: Image.asset(AppAssets.passWordIcon,scale: 18,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 10.h,),
            CommonTextFormField(
              controller: forgetPassWatch.confirmPasswordController,
              hintText: "Confirm Password",
              validator:(v)=> confirmPassValidator(v,forgetPassWatch.newPasswordController.text),
              prefixIcon: Image.asset(AppAssets.passWordIcon,scale: 18,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 60.h,),
            CommonButton(onTap: (){
              forgetPassWatch.changePassWordButton(context);
            }, btnText: "Change Password"),
          ],
        ),
      ).paddingSymmetric(horizontal: 16.w, vertical: 10.h);
    },);
  }
}
