import 'package:digi_vegetable/frame_work/controller/auth_controller/login/login_controller.dart';
import 'package:digi_vegetable/ui/auth/login/helper/login_form.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_loading.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/text_styles.dart';

class Login extends ConsumerWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return CommonLoading(
      show: ref.watch(logInController).isLoading,
      child: Scaffold(
        body: _bodyWidget,
      ),
    );
  }

  get _bodyWidget => Column(
    children: [
      Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child:  Image.asset(AppAssets.loginImage,fit: BoxFit.cover,),
                ),
                Column(
                  children: [
                    SizedBox(height: 5.h,),
                    Text("Welcome back!",style: TextStyles.w600.copyWith(fontSize: 22.sp,color: AppColors.black),),
                    Text("Log in with your data that you intered during your registration",style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),),
                    SizedBox(height: 40.h,),
                    const LoginForm(),
                  ],
                ).paddingSymmetric(horizontal: 16.w,vertical:10.h )
              ],
            ),
          )
      )
    ],
  );
}
