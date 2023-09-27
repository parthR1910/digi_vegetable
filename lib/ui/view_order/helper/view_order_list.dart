import 'package:digi_vegetable/ui/view_order/helper/view_order_tile.dart';

import '../../utils/theme/theme.dart';

class ViewOrderList extends StatelessWidget {
  const ViewOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(2, (index) {
        return const ViewOrderTile(name: "Arabic Ginger", kg: 2, qty: 5, price: 200);
      }).toList()
    );
  }
}
