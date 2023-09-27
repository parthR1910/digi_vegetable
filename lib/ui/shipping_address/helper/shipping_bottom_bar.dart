import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';

import '../../utils/common_widget/common_button.dart';
import '../../utils/theme/theme.dart';

class ShippingBottomBar extends StatelessWidget {
  const ShippingBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 16.h),
        height: kBottomNavigationBarHeight + 30.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400,width: 1.5.w),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
        child: CommonButton(onTap: (){
          context.pop();  
        },btnText: "Apply",height: 50,)
      // ElevatedButton(onPressed: (){},child: Text("Continue to Payment",style: TextStyles.w600.copyWith(color: AppColors.white,fontSize: 18.sp),),)
    );
  }
}
