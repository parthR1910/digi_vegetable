import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_button.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import '../../../utils/theme/app_assets.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_styles.dart';
import '../../../utils/theme/theme.dart';

class PaymentSuccessDialog extends StatelessWidget {
  const PaymentSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child:Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AppAssets.successCartLogoIcon,height: 150.h,width: context.screenWidth.w,),
            SizedBox(height: 5.h,),
            Text("Order Successful!",style: TextStyles.w600.copyWith(fontSize: 18.sp,color: AppColors.black),),
            SizedBox(height: 5.h,),
            Text("you have successfully  made order",style: TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),textAlign: TextAlign.center),
            SizedBox(height: 20.h,),
            CommonButton(onTap: (){
              context.pop();
              context.pop();
              context.pop();
              context.pop();
              context.pushNamed(AppRoute.viewOrder);
            }, btnText: "View Order",fontSize: 14.sp,),
            SizedBox(height: 10.h,),
            CommonButton(onTap: (){
              context.pop();
            }, btnText: "Download E-receipt",backgroundColor: Colors.grey.shade200,txtColor: AppColors.primary,fontSize: 14.sp,),
          ],
        ),
      ),
    );
  }
}
