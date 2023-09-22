import '../../utils/common_widget/common_button.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/theme.dart';

class ProductDetailButton extends StatelessWidget {
  const ProductDetailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: 8.h,left: 8.w,right: 8.w),
      child: Row(
        children: [
          Expanded(child: CommonButton(onTap: (){}, btnText: "Buy Now",border: Border.all(color: AppColors.primary,width: 1.5),backgroundColor: AppColors.white,txtColor: AppColors.primary,)),
          SizedBox(width: 4.w,),
          Expanded(child: CommonButton(onTap: (){
          }, btnText: "Add to Cart")),
        ],
      ),
    );
  }
}
