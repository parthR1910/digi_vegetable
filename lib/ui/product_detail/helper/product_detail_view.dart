import 'package:digi_vegetable/ui/product_detail/helper/product_detail_form.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';

import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Arabic Ginger",style: TextStyles.w600.copyWith(fontSize: 25.sp,color: AppColors.black),),
              IconButton(onPressed: (){}, icon: Image.asset(AppAssets.heartActiveIcon,scale: 22,))
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
             Container(
               alignment: Alignment.center,
               decoration: BoxDecoration(
                 color: Colors.grey.shade300,
                 borderRadius: BorderRadius.circular(10.r)
               ),
               child: Text("236 sold",style: TextStyles.w600.copyWith(fontSize: 13.sp,color: AppColors.black),).paddingSymmetric(horizontal: 6.w,vertical: 4.h),
             ),
              const Icon(Icons.star_half).paddingHorizontal(8.w),
           Text("4.8",style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),),
           Text("(6577 reviews)",style: TextStyles.w400.copyWith(fontSize: 12.sp,color: AppColors.black),)
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Text("₹110.00",style: TextStyles.w600.copyWith(fontSize: 25.sp,color: AppColors.black),),
              SizedBox(width:5.w),
              Text("200.00",style: TextStyles.w600.copyWith(fontSize: 22.sp,color: AppColors.textGreyColor,decoration: TextDecoration.lineThrough),),
            ],
          ),
          SizedBox(height: 10.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Description",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
              SizedBox(height: 5.h,),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",style: TextStyles.w400.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor)),
            ],
          ),
          SizedBox(height: 10.h,),
          const ProductDetailForm(),
        ],
      ),
    );
  }
}
