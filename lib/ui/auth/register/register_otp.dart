import 'package:digi_vegetable/frame_work/controller/auth_controller/register/register_controller.dart';
import 'package:digi_vegetable/ui/auth/register/helper/register_otp/register_otp_form.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_loading.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import '../../utils/theme/app_assets.dart';
import '../../utils/theme/app_string.dart';
import '../../utils/theme/theme.dart';

class RegisterOTP extends ConsumerWidget {
  const RegisterOTP({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return CommonLoading(
      show: ref.watch(registerController).isOptLoading,
      child: Scaffold(
        body: _bodyWidget(context,ref),
      ),
    );
  }
  Widget _bodyWidget(BuildContext context,WidgetRef ref){
    final  appStringWatch = ref.watch(appStringController);

    return SafeArea(
        child: Column(
          children: [
            CommonAppbar(title: appStringWatch.otpVerificationKey),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 300.h,
                    width: context.screenHeight,
                    child: Image.asset(AppAssets.registerOtpImage,fit: BoxFit.fill,),
                  ).paddingHorizontal(10.w),
                  const RegisterOTPForm()
                ],
              ),
            ))
          ],
        )
    );
  }
}
