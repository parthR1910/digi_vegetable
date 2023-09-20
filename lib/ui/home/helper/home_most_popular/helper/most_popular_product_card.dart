import 'package:digi_vegetable/frame_work/controller/home_controller/filter_controller/most_pupular_filter_controller.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_product_card.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class MostPopularProductCard extends StatelessWidget {
  const MostPopularProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, child) {
        final mostPopularProductWatch = ref.watch(mostPopularFilterController);
        return SizedBox(
            width: context.screenWidth,
            child: Wrap(
                runSpacing: 20,
                alignment: WrapAlignment.spaceEvenly,
                children: List.generate(mostPopularProductWatch.products.length,
                    (index) {
                  final product = mostPopularProductWatch.products[index];
                  return CommonProductCard(
                    productData: product,
                    onSelected: (val) {
                      switch (val) {
                        case "500g":
                          mostPopularProductWatch.getItemOfData(index, "500g");
                          break;
                        case "1Kg":
                          mostPopularProductWatch.getItemOfData(index, "1Kg");
                          break;
                        case "2Kg":
                          mostPopularProductWatch.getItemOfData(index, "2Kg");
                          break;
                        case "4Kg":
                          mostPopularProductWatch.getItemOfData(index, "4Kg");
                          break;
                        case "5Kg":
                          mostPopularProductWatch.getItemOfData(index, "5Kg");
                          break;
                      }
                    },
                    likeButton: () {
                      mostPopularProductWatch.updateLike(index);
                    },
                  );
                })));
      },
    );
  }
}
