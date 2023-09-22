import 'package:digi_vegetable/frame_work/controller/auth_controller/register/register_controller.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_button.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:pinput/pinput.dart';

import '../../../../utils/theme/app_colors.dart';
import '../../../../utils/theme/app_string.dart';
import '../../../../utils/theme/text_styles.dart';
import '../../../../utils/theme/theme.dart';

class RegisterOTPForm extends StatelessWidget {
  const RegisterOTPForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final registerWatch = ref.watch(registerController);
      final  appStringWatch = ref.watch(appStringController);

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(appStringWatch.verificationCodeKey,style: TextStyles.w600.copyWith(fontSize: 22.sp,color: AppColors.black),),
          SizedBox(height: 10.h,),
          Text(appStringWatch.verificationSubtitleKey,style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),),
          SizedBox(
            width: 280.w,
            child: RichText(
              maxLines: 2,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sepi****@gmail.com',
                    style: TextStyle(
                        color: AppColors.black, fontSize: 14.sp, height: 2),
                  ),
                  TextSpan(
                    text:appStringWatch.changeYourEmailKey, // Second word
                    style: TextStyle(
                      color: AppColors.primary, // Brown color for the second word
                      fontSize: 14.sp,
                    ),
                  ), // Space between words
                ],
              ),
            ),
          ),
          SizedBox(height: 40.h,),
          ///otp
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              child: Pinput(
                keyboardType: TextInputType.number,
                length: 4,
                onChanged: registerWatch.get,
              ),
            ),
          ),
          SizedBox(height: 60.h,),
          Row(
            children: [
              Expanded(child: CommonButton(onTap: (){}, btnText: appStringWatch.resendKey,border: Border.all(color: AppColors.primary,width: 1.5),backgroundColor: AppColors.white,txtColor: AppColors.primary,)),
              SizedBox(width: 4.w,),
              Expanded(child: CommonButton(onTap: (){
                registerWatch.confirm(context);
              }, btnText: appStringWatch.confirmKey)),
            ],
          )
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 10.h);
    },);
  }
}
