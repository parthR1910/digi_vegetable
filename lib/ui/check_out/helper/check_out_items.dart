import 'package:digi_vegetable/ui/utils/common_widget/common_tiles/common_product_cart_tile.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';

import '../../utils/theme/theme.dart';

class CheckOutItems extends StatelessWidget {
  const CheckOutItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        ...List.generate(
            3,
                (index) => CommonProductCartTile(
              productImg: AppAssets.ginGerImg,
              name: "Ginger",
              price: "3000",
              kg: "10",
              addQuantity: () {},
              removeQuantity: () {},
            ))
      ]
    );
  }
}
