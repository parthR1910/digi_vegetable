import 'package:digi_vegetable/frame_work/controller/product_detail_controller.dart';
import 'package:digi_vegetable/frame_work/controller/product_filter/product_filter_controller.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../../utils/theme/app_colors.dart';
import '../../utils/theme/text_styles.dart';
import '../../utils/theme/theme.dart';

class ProductDetailForm extends ConsumerWidget {
  const ProductDetailForm({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final productDetailWatch = ref.watch(productDetailController);
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("KG",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
              SizedBox(
                height: 60.h,
                width: 160,
                child: DropdownButtonFormField(
                    alignment: Alignment.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 8.h),
                      fillColor: Colors.white,
                      hintText: "Choose your Kg",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.grey,width: 1.5.w)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.grey,width: 1.5.w)
                      ),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.grey,width: 1.5.w)
                      ) ,
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.grey,width: 1.5.w)
                      ),
                      helperStyle: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.textGreyColor),
                      // suffixIcon: const Icon(Icons.arrow_drop_down),
                    ),
                    items:const [
                      DropdownMenuItem(value: "1Kg",child: Text("1Kg",),),
                      DropdownMenuItem(value: "2Kg",child: Text("2Kg")),
                      DropdownMenuItem(value: "3Kg",child: Text("3Kg")),
                      DropdownMenuItem(value: "4Kg",child: Text("4Kg")),
                    ], onChanged: (val){}),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Quantity",style: TextStyles.w600.copyWith(fontSize: 16.sp,color: AppColors.black),),
              FittedBox(
                child: Container(
                  width: 160.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Colors.grey.shade400,width: 1.5.w)
                  ),
                  child: Row(
                    children: [
                      TextButton(onPressed: (){
                        productDetailWatch.removeQuantity();
                      }, child: Text("-",style: TextStyles.w500.copyWith(fontSize: 25.sp,color: Colors.black),)),
                      Text("${productDetailWatch.quantity}",style: TextStyles.w500.copyWith(fontSize: 20.sp,color: Colors.black),),
                      TextButton(onPressed: (){
                        productDetailWatch.addQuantity();
                      }, child: Text("+",style: TextStyles.w500.copyWith(fontSize: 25.sp,color: Colors.black),))
                    ],
                  ).paddingOnly(top: 3.h,bottom: 3.h,left: 8.w,right: 8.w),
                ),
              ),
            ],
          ),
        )
      ],
    );

  }
}
