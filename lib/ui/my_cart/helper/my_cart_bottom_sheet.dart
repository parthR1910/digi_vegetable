import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';

import '../../utils/common_widget/common_button.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class MyCartBottomSheet extends StatelessWidget {
  const MyCartBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      backgroundColor: Colors.white,
      enableDrag: false,
      onClosing: (){}, builder: (context) {
      return Container(
        alignment: Alignment.center,
        height: 150.h,
        width: context.screenWidth,
        margin: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 5.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.grey.shade400,
              ),
            ),
            Text("Are you sure you want to remove the product from the cart?",style: TextStyles.w600.copyWith(fontSize: 18.sp,color: AppColors.black),softWrap: true,textAlign: TextAlign.center),
            Row(
              children: [
                Expanded(child: CommonButton(onTap: (){
                  context.pop();
                }, btnText: "Cancel",border: Border.all(color: AppColors.primary,width: 1.5),backgroundColor: AppColors.white,txtColor: AppColors.primary,)),
                SizedBox(width: 4.w,),
                Expanded(child: CommonButton(onTap: (){
                }, btnText: "Remove")),
              ],
            )

          ],
        ),
      );
    },);
  }
}
