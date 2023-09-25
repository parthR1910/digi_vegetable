
import 'package:digi_vegetable/ui/my_cart/helper/my_cart_bottombar.dart';
import 'package:digi_vegetable/ui/my_cart/helper/my_cart_tile.dart';

import '../utils/theme/theme.dart';
import 'helper/my_cart_app_bar.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: const MyCartBottomBar(),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 2.h,),
            const MyCartAppBar(),
            const Expanded(child: MyCartProduct())
          ],
        ),
      ),
    );
  }
}
