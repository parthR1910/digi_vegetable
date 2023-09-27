import 'package:digi_vegetable/ui/my_order/helper/my_order_appbar.dart';
import 'package:digi_vegetable/ui/my_order/helper/my_order_tab_bar.dart';

import '../utils/theme/theme.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            const MyOrderAppBar(),
            const Expanded(child: MyOrderTabBar()),
          ],
        ),
      ),
    );
  }
}
