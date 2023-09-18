import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import '../../../../frame_work/controller/auth_controller/forget_pass/forgerpass_controller.dart';
import '../../../app_routes/app_routes.dart';
import '../../../utils/common_widget/common_button.dart';
import '../../../utils/common_widget/common_text_form_field.dart';
import '../../../utils/form_validation.dart';
import '../../../utils/theme/app_assets.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class ForgetPassForm extends StatelessWidget {
  const ForgetPassForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final forgetPassWatch = ref.watch(forgetPassController);
      return Form(
        key: forgetPassWatch.forgetPassKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Password Recovery",style: TextStyles.w600.copyWith(fontSize: 20.sp,color: AppColors.black),),
            Text("Enter your mail to recover your password.",style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),),
            SizedBox(height: 40.h,),
            CommonTextFormField(
              controller: forgetPassWatch.emailController,
              hintText: "Email Address",
              keyboardType: TextInputType.emailAddress,
              validator: emailValidator,
              prefixIcon: Image.asset(AppAssets.emailIcon,scale: 18,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 100.h,),
            CommonButton(onTap: (){
              forgetPassWatch.nextButton(context);
            }, btnText: "Next"),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.subTextGreyColor),),
                TextButton(onPressed: (){
                  context.pushAndRemoveUntilNamed(AppRoute.register);
                }, child: Text("Sign up",style: TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.primary),))
              ],
            )
          ],
        ),
      ).paddingSymmetric(horizontal: 16.w, vertical: 10.h);
    },);
  }
}
