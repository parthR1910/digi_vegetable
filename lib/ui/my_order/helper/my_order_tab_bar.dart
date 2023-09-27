import 'package:digi_vegetable/ui/my_order/helper/completed/my_order_complete.dart';
import 'package:digi_vegetable/ui/my_order/helper/pending/my_order_pending.dart';

import '../../utils/theme/theme.dart';

class MyOrderTabBar extends StatelessWidget {
  const MyOrderTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2, child: Column(
      children: [
         TabBar(

             tabs:const [
           Tab(child: Text("Pending"),),
           Tab(child: Text("Completed"),),
         ],indicatorSize: TabBarIndicatorSize.tab,
         indicatorPadding: EdgeInsets.symmetric(horizontal: 5.w)),
        const Expanded(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
              children: [
              MyOrderPending(),
            MyOrderComplete()
          ]),
        )
      ],
    ));
  }
}
