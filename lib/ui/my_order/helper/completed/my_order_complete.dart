import 'package:digi_vegetable/ui/my_order/helper/completed/complete_order_review.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:digi_vegetable/ui/my_order/helper/my_order_product_tile.dart';

class MyOrderComplete extends StatelessWidget {
  const MyOrderComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) => MyOrderProductTile(img: AppAssets.ginGerImg, name: 'Arabic Ginger', kg: 4.toString(), status: 'completed', price: 450,btnShow: true, btnTxt: 'review', onBtnTap: () {
          showBottomSheet(context: context, builder: (context) {
            return const CompleteOrderReview();
          },);
        },).paddingHorizontal(16.w))
      ),
    );
  }
}
