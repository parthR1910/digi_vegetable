
import 'package:digi_vegetable/frame_work/controller/my_cart_controller/my_cart_controller.dart';
import 'package:digi_vegetable/ui/my_cart/helper/my_cart_bottombar.dart';
import 'package:digi_vegetable/ui/my_cart/helper/mycart_product.dart';
import 'package:flutter/scheduler.dart';

import '../utils/theme/theme.dart';
import 'helper/my_cart_app_bar.dart';

class MyCart extends ConsumerStatefulWidget {
  const MyCart({super.key});

  @override
  ConsumerState<MyCart> createState() => _MyCartState();
}

class _MyCartState extends ConsumerState<MyCart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(myCartController).init();
  }
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
