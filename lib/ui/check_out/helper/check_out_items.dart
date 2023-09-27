import 'package:digi_vegetable/frame_work/controller/my_cart_controller/my_cart_controller.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_tiles/mycart_checkout_common_tile/common_product_cart_tile.dart';
import '../../utils/theme/theme.dart';

class CheckOutItems extends ConsumerWidget {
  const CheckOutItems({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final myCartWatch = ref.watch(myCartController);
    return Column(
      children:[
        ...List.generate(
            myCartWatch.products!.length,
                (index) {
              final product = myCartWatch.products![index];
              if(myCartWatch.products == null){
                return const Center(child: Text("No Data"),);
              }
              return CommonProductCartTile(
                index: index,
                productData: product,
                addQuantity: () {
                  myCartWatch.addQuantity(index);
                },
                removeQuantity: () {
                  myCartWatch.removeQuantity(index);
                },
              );
                })
      ]
    );
  }
}
