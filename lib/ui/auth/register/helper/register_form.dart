import 'package:digi_vegetable/frame_work/controller/auth_controller/register/register_controller.dart';
import 'package:digi_vegetable/ui/auth/register/helper/register_button.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_text_form_field.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/form_validation.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../utils/theme/text_styles.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer(builder: (context, ref, child) {
      final loginWatch = ref.watch(registerController);
      return Form(
        key: loginWatch.registerKey,
        child: Column(
          children: [
            CommonTextFormField(
              controller: loginWatch.emailController,
              hintText: "Email Address",
              validator: emailValidator,
              prefixIcon: Image.asset(AppAssets.emailIcon,scale: 18,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 10.h,),
            CommonTextFormField(
              controller: loginWatch.passwordController,
              hintText: "Password",
              validator: passValidator,
              prefixIcon: Image.asset(AppAssets.passWordIcon,scale: 18,).paddingOnly(left: 5.w),
            ),
            SizedBox(height: 8.h,),
            Row(
              children: [
                Checkbox(
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                    value: loginWatch.isCheckBoxSelected, onChanged: (val){
                  loginWatch.updateCheckboxSelected(val!);
                }),
                SizedBox(width: 5.w,),
                SizedBox(
                  width: 250.w,
                  child: RichText(
                    maxLines: 2,
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'I agree with the',
                          style: TextStyle(
                              color: Colors.grey, fontSize: 14.sp, height: 2),
                        ),
                        TextSpan(
                          text: ' Terms of service', // Second word
                          style: TextStyle(
                            color: context.colorScheme
                                .primary, // Brown color for the second word
                            fontSize: 14.sp,
                          ),
                        ),
                        TextSpan(
                            text: ' & privacy policy',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                            )), // Space between words
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 40.h,),
            const RegisterButton(),
          ],
        ),
      );
    },);
  }
}
