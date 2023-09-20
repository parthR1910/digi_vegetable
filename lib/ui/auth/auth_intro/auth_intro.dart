import 'package:digi_vegetable/ui/utils/common_widget/common_button.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class AuthIntro extends StatelessWidget {
  const AuthIntro({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppAssets.authIntroImg), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                    LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.white.withOpacity(.8),
                      Colors.transparent,
                    ])),
              ),
            ),
          ),
          CommonButton(onTap: (){
            context.pushNamed(AppRoute.login);
          }, btnText: "Sign in",height: 55.h,).paddingHorizontal(10.w),
          CommonButton(onTap: (){
            context.pushNamed(AppRoute.register);
          }, btnText: "Sign Up",
            backgroundColor: AppColors.white,
            txtColor: AppColors.primary,
            border: Border.all(color: AppColors.primary,width: 1.5.w),
          ).paddingAll(10)
        ]
      ),
    );
  }
}
