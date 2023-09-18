import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_button.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';

import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class RegisterGreeting extends StatelessWidget {
  const RegisterGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Image.asset(AppAssets.rocketImg,height: 300.h,width: 300.w,),
           SizedBox(height: 20.h,),
           Text("Whoohooo !",style: TextStyles.w600.copyWith(fontSize: 20.sp,color: AppColors.primary),),
           SizedBox(height: 10.h,),
           Text("Your Email has been verified successfully.",style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.primary),),
           SizedBox(height: 90.h,),
           CommonButton(onTap: (){
             context.pushNamed(AppRoute.registerDetails);
           }, btnText: "Go to Shopping")
         ],
      ).paddingHorizontal(10.w),
    );
  }
}
