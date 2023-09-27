import 'package:digi_vegetable/ui/utils/common_widget/common_button.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/text_styles.dart';
import '../../../frame_work/repository/model/product_data.dart';
import '../theme/theme.dart';

class CommonProductCard extends StatelessWidget {
  final ProductData productData;
  final void Function()? likeButton;
  final void Function()? onTap;
  final void Function(String)? onSelected;
  const CommonProductCard({super.key, required this.productData, this.likeButton, this.onSelected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 150.h,
              width: context.screenWidth * 0.4,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.shade100,
                  image: DecorationImage(
                    image: AssetImage(productData.img),
                    fit: BoxFit.contain
                  ),
                  borderRadius: BorderRadius.circular(16.r)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(16.r))
                    ),
                    child: Text("${productData.discount}% off").paddingHorizontal(5),
                  ),
                  const Spacer(),
                  IconButton.filledTonal(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.white,
                      ),
                      onPressed: likeButton, icon: productData.isLiked? const Icon(Icons.favorite,size: 20,color: Colors.red,): const Icon(Icons.favorite_border,size: 20,color: Colors.red,))
                ],
              ),
            ),
          ),
          SizedBox(height: 5.h,),
          Text(productData.name,style: TextStyles.w600.copyWith(fontSize: 12.sp,color: AppColors.black),),
          Text("\$${productData.price}/kg",style: TextStyles.w700.copyWith(fontSize: 14.sp,color: AppColors.black),),
          SizedBox(height: 3.h,),
          Row(
            children: [
              Expanded(
                child: PopupMenuButton(
                  surfaceTintColor: AppColors.white,
                  onSelected: onSelected,
                  itemBuilder: (context) {
                    return const[
                      PopupMenuItem(value: "500g",child: Text("500g")),
                      PopupMenuItem(value: "1Kg",child: Text("1Kg")),
                      PopupMenuItem(value: "2Kg",child: Text("2Kg")),
                      PopupMenuItem(value: "4Kg",child: Text("4Kg")),
                      PopupMenuItem(value:"5Kg",child: Text("5Kg")),
                    ];
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        border: Border.all(color: AppColors.textGreyColor)
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(productData.kg),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ).paddingHorizontal(5),
                  ),
                ),
              ),
              SizedBox(width: 3.w,),
              Expanded(child: CommonButton(onTap: (){},btnText: "Add",height: 25.h,borderRadius: 10.r,fontSize: 14.sp,))
            ],
          )
        ],
      ),
    );
  }
}
