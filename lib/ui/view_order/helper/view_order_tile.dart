import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class ViewOrderTile extends StatelessWidget {
  final String name;
  final int kg;
  final int qty;
  final double price;
  const ViewOrderTile({super.key, required this.name, required this.kg, required this.qty, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 8.0.h,left: 16.w,right: 16.w),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r), side: BorderSide(color: Colors.grey.shade400,width: 1)),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
        leading: const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(AppAssets.ginGerImg),
        ),
        title: Text(name,style:  TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.black),),
        subtitle: Row(
          children: [
            Text("$kg Kg",style:  TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.black),),
            const Expanded(child: SizedBox()),
            Container(
              padding: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: Colors.grey.shade400,
              ),
              child: Text("Qty: $qty",style:  TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),),
            )
          ],
        ),
        trailing: Text("₹$price",style:  TextStyles.w400.copyWith(fontSize: 16.sp,color: AppColors.black),),
      ),
    );
  }
}
