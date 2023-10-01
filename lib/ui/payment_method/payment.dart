import 'package:digi_vegetable/ui/utils/extension/widget_extension.dart';

import '../utils/common_widget/common_appbar.dart';
import '../utils/theme/theme.dart';
import 'helper/payment/payment_bottom_bar.dart';
import 'helper/payment/payment_list.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const PaymentBottomBar(),
      body: SafeArea(
        child: Column(
          children: [
            const CommonAppbar(
              title: "Payment Method",
            ).paddingHorizontal(16.w),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [PaymentList()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
