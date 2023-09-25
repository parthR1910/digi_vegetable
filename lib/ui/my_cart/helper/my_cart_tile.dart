import 'package:digi_vegetable/frame_work/controller/my_cart_controller/my_cart_controller.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_tiles/common_product_cart_tile.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import '../../utils/theme/theme.dart';

class MyCartProduct extends ConsumerWidget {
  const MyCartProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myCartWatch = ref.watch(myCartController);
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) {
          return CommonProductCartTile(
            productImg: AppAssets.ginGerImg,
            name: "Ginger",
            price: "1000",
            kg: "5",
            quantity: myCartWatch.quantity.toString(),
            addQuantity: () {
              myCartWatch.addQuantity();
            },
            removeQuantity: (){
              myCartWatch.removeQuantity();
            },
          );
        }),
      ),
    );
  }
}
