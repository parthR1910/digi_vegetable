import 'package:digi_vegetable/frame_work/controller/auth_controller/register/register_controller.dart';
import 'package:digi_vegetable/ui/auth/register/helper/register/register_form.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_loading.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../utils/theme/app_string.dart';
import '../../utils/theme/text_styles.dart';

class Register extends ConsumerWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return CommonLoading(
      show: ref.watch(registerController).isRegisterButtonLoading,
      child: Scaffold(
        body: _bodyWidget(ref),
      ),
    );
  }

  Widget _bodyWidget(WidgetRef ref) {
    final  appStringWatch = ref.watch(appStringController);
    return Column(
      children: [
        Expanded(flex: 4,
          //     child: Container(
          //   color: Colors.black,
          // ),
          child: SizedBox(
              width: double.infinity,
              child: Image.asset(AppAssets.registerImage,fit: BoxFit.cover,)),
        ),
        Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(appStringWatch.letGetStartedKey,style: TextStyles.w600.copyWith(fontSize: 22.sp,color: AppColors.black),),
                  Text(appStringWatch.signUpSubtitleKey,style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),),
                  SizedBox(height: 40.h,),
                  const RegisterForm(),
                ],
              ),
            ).paddingSymmetric(horizontal: 16.w,vertical:10.h )
        )
      ],
    );
  }
}
