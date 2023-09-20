import 'package:digi_vegetable/frame_work/controller/home_controller/top_category_controller.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';

import '../../../../utils/theme/text_styles.dart';
import '../../../../utils/theme/theme.dart';

class TopCategoryProductCard extends StatelessWidget {
  final TopCategoryProductData productData;
  const TopCategoryProductCard({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 150,
          width: context.screenWidth * 0.4,
          decoration: BoxDecoration(
            // color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(20.r),
            image: DecorationImage(
              image:  AssetImage(productData.image),
              fit: BoxFit.fill
            )
          ),
        ),
        Text(productData.name,style: TextStyles.w600.copyWith(fontSize: 14.sp,color: AppColors.black),)
      ],
    );
  }
}
