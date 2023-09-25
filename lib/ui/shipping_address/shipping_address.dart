import 'package:digi_vegetable/ui/shipping_address/helper/shipping_address_list.dart';
import 'package:digi_vegetable/ui/shipping_address/helper/shipping_bottom_bar.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';
import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const ShippingBottomBar(),
      body: SafeArea(
        child: Column(
          children: [
            const CommonAppbar(title: "Shipping Address",),
            Expanded(child: SingleChildScrollView(
              child: const Column(
                children: [
                  ShippingAddressList()
                ],
              ).paddingHorizontal(16.w),
            ))

          ],
        ),
      ),
    );
  }
}
