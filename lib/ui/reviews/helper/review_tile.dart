import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';

import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: Image.asset(AppAssets.personActiveIcon,scale: 22,),
                ),
                SizedBox(width: 8.w,),
                Text("Jane Cooper",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
                const Spacer(),
                TextButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r),side: BorderSide(color: Colors.grey.shade400,width: 1.5.w))
                    ),
                    onPressed: (){}, icon: const Icon(Icons.star,color: AppColors.black,size: 15,), label: const Text("5"))
              ],
            ),
            SizedBox(height: 10.h,),
            Text(
              softWrap: true,
              "The seller is very fast in sending packet, I just bought it and the item arrived in just 1 day!",style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.textGreyColor),),
            SizedBox(height: 8.h,),
            Row(
              children: [
                IconButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero
                  ),
                    onPressed: (){}, icon: Image.asset(AppAssets.heartActiveIcon,scale: 30,)),
                Text("876",style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.black)),
                SizedBox(width: 8.w),
                Text("8 days ago",style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.textGreyColor))
              ],
            )
          ],
        ),
      );
    },);
  }
}
