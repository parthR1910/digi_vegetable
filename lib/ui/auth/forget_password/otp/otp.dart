import 'package:digi_vegetable/frame_work/controller/auth_controller/forget_pass/forgerpass_controller.dart';
import 'package:digi_vegetable/ui/auth/forget_password/otp/otp_form.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_loading.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../../utils/theme/app_assets.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class OTP extends ConsumerWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return CommonLoading(
      show: ref.watch(forgetPassController).isConfirmLoading,
      child: Scaffold(
        body: _bodyWidget(context),
      ),
    );
  }
  Widget _bodyWidget(BuildContext context){
    return SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton.filledTonal(
                    onPressed: () {
                      context.pop();
                    },
                    style: ButtonStyle(
                        padding: MaterialStateProperty.resolveWith(
                                (states) => EdgeInsets.all(20.r)),
                        backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.grey.shade200)),
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: 30.sp,
                    )),
                Expanded(
                  child: Text("Forget Password",textAlign: TextAlign.center,style: TextStyles.w600.copyWith(fontSize: 20.sp, color: AppColors.black),),
                )
              ],
            ),
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
