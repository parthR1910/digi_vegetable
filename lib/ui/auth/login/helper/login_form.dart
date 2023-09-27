import 'package:digi_vegetable/frame_work/controller/auth_controller/login/login_controller.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/auth/login/helper/login_button.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_text_form_field.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/form_validation.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../utils/theme/app_string.dart';
import '../../../utils/theme/text_styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer(builder: (context, ref, child) {
      final loginWatch = ref.watch(logInController);
      final  appStringWatch = ref.watch(appStringController);
      return Form(
        key: loginWatch.loginKey,
        child: Column(
          children: [
            CommonTextFormField(
              controller: loginWatch.emailController,
              keyboardType: TextInputType.emailAddress,
              hintText: appStringWatch.emailAddressKey,
              validator: emailValidator,
              prefixIcon: Image.asset(AppAssets.emailIcon,scale: 18,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 10.h,),
            CommonTextFormField(
              controller: loginWatch.passwordController,
              hintText: appStringWatch.passwordKey,
              validator: passValidator,
              prefixIcon: Image.asset(AppAssets.passWordIcon,scale: 18,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 8.h,),
            Row(
              children: [
               Row(
                 children: [
                   Checkbox(
                       shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                       value: loginWatch.isCheckBoxSelected, onChanged: (val){
                     loginWatch.updateCheckboxSelected(val!);
                   }),
                   SizedBox(width: 5.w,),
                   Text(appStringWatch.rememberMeKey,style: TextStyles.w500.copyWith(fontSize: 12.sp,color: AppColors.hintTextColor),)
                 ],
               ),
               const Expanded(child: SizedBox()),
               TextButton(onPressed: (){
                 context.pushNamed(AppRoute.forgetPassword);
               }, child:  Text("${appStringWatch.forgetPassKey}?",style:TextStyles.w500.copyWith(fontSize: 12.sp,color: AppColors.primary,))
               )],
            ),
            SizedBox(height: 40.h,),
            const LogInButton(),
          ],
        ),
      );
    },);
  }
}
