import 'package:digi_vegetable/frame_work/controller/home_controller/top_category_controller.dart';
import 'package:digi_vegetable/ui/home/helper/top_category/helper/top_category_product_card.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';

import '../../../../utils/theme/theme.dart';

class TopCategoryProducts extends StatelessWidget {
  const TopCategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final topCategoryWatch = ref.watch(topCategoryController);
      return SizedBox(
          width: context.screenWidth,
          child: Wrap(
            runSpacing: 20,
              alignment: WrapAlignment.spaceEvenly,
              children: List.generate(topCategoryWatch.products.length, (index) {
                final product = topCategoryWatch.products[index];
                return TopCategoryProductCard(productData: product);
              })
          ));
    },);
  }
}
