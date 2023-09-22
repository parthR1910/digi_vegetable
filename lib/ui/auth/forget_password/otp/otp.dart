import 'package:digi_vegetable/frame_work/controller/auth_controller/forget_pass/forgerpass_controller.dart';
import 'package:digi_vegetable/ui/auth/forget_password/otp/otp_form.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_loading.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../../utils/theme/app_assets.dart';
import '../../../utils/theme/app_string.dart';
import '../../../utils/theme/theme.dart';

class OTP extends ConsumerWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return CommonLoading(
      show: ref.watch(forgetPassController).isConfirmLoading,
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
            CommonAppbar(title: appStringWatch.forgetPassKey),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 350.h,
                    width: context.screenHeight,
                    child: Image.asset(AppAssets.otpImage,fit: BoxFit.fill,),
                  ).paddingHorizontal(10.w),
                  const OTPForm()
                ],
              ),
            ))
          ],
        )
    );
  }
}
