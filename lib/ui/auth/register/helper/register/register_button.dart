import 'package:digi_vegetable/frame_work/controller/auth_controller/login/login_controller.dart';
import 'package:digi_vegetable/frame_work/controller/auth_controller/register/register_controller.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';

import '../../../../utils/common_widget/common_button.dart';
import '../../../../utils/theme/text_styles.dart';
import '../../../../utils/theme/theme.dart';

class RegisterButton extends ConsumerWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Column(
      children: [
        CommonButton(onTap: (){
          ref.watch(registerController).registerButton(context);
        }, btnText: "Sign In"),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?",style: TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.subTextGreyColor),),
            TextButton(onPressed: (){
              context.pushAndReplaceNamed(AppRoute.login);
            }, child: Text(" Sign up",style: TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.primary),))
          ],
        )
      ],
    );
  }
}
