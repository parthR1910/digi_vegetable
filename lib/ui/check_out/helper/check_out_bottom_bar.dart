import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class CheckOutBottomBar extends StatelessWidget {
  const CheckOutBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 16.h),
        height: kBottomNavigationBarHeight + 30.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade400,width: 1.5.w),
         borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
        child:

        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
              backgroundColor: AppColors.primary
          ),
          onPressed: (){
            context.pushNamed(AppRoute.paymentMethod);
          },child: Text("Continue to Payment",style: TextStyles.w600.copyWith(color: AppColors.white,fontSize: 16.sp),),)
      );
  }
}
