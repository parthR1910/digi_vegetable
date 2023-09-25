import 'package:digi_vegetable/ui/payment_method/helper/payment_method_bottom_bar.dart';
import 'package:digi_vegetable/ui/payment_method/helper/payment_method_list.dart';
import 'package:digi_vegetable/ui/utils/common_widget/common_appbar.dart';

import '../utils/theme/theme.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: PaymentMethodBottomBar(),
      body: SafeArea(
        child: Column(
          children: [
            CommonAppbar(title: "Payment Method",),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  PaymentMethodList()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
