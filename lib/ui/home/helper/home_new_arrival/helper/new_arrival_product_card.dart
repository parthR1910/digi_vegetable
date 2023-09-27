import 'package:digi_vegetable/frame_work/controller/home_controller/new_arrival_controller.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_product_card.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';

class NewArrivalProductCard extends StatelessWidget {
  const NewArrivalProductCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer(builder: (_, ref, child) {
      final newArrivalWatch = ref.watch(newArrivalController);
      return SizedBox(
          width: context.screenWidth,
          child: Wrap(
              runSpacing: 20,
              alignment: WrapAlignment.spaceEvenly,
              children: List.generate(newArrivalWatch.products.length, (index) {
                final product = newArrivalWatch.products[index];
                return CommonProductCard(productData: product,
                  onTap: (){
                    context.pushNamed(AppRoute.productDetail);
                  },
                  onSelected: (val) {
                    switch (val) {
                      case "500g":
                        newArrivalWatch.getItemOfData(index, "500g");
                        break;
                      case "1Kg":
                        newArrivalWatch.getItemOfData(index, "1Kg");
                        break;
                      case "2Kg":
                        newArrivalWatch.getItemOfData(index, "2Kg");
                        break;
                      case "4Kg":
                        newArrivalWatch.getItemOfData(index, "4Kg");
                        break;
                      case "5Kg":
                        newArrivalWatch.getItemOfData(index, "5Kg");
                        break;
                    }
                  },
                  likeButton: (){
                  newArrivalWatch.updateLike(index);
                },);
              })
          ));
    },);
  }
}