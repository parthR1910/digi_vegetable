import 'package:digi_vegetable/ui/auth/login/helper/login_form.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/text_styles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget,
    );
  }

  get _bodyWidget => Column(
    children: [
      Expanded(flex: 4,
      //     child: Container(
      //   color: Colors.black,
      // ),
        child: Image.asset(AppAssets.loginImage,fit: BoxFit.cover,),
      ),
      Expanded(
        flex: 7,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Welcome back!",style: TextStyles.w600.copyWith(fontSize: 22.sp,color: AppColors.black),),
                Text("Log in with your data that you intered during your registration",style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),),
                SizedBox(height: 40.h,),
                const LoginForm(),
              ],
            ),
          ).paddingSymmetric(horizontal: 16.w,vertical:10.h )
      )
    ],
  );
}
