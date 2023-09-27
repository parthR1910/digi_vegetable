import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../../ui/utils/theme/app_assets.dart';

final paymentController = ChangeNotifierProvider((ref) => PaymentController());


class PaymentController extends ChangeNotifier{

  Map<String, dynamic>? selectedPayment;
  List<Map<String, dynamic>> paymentList = [];

  init() {
    paymentList = [
      {'title': 'RazorPay', 'img':AppAssets.razorPayIcon},
      {'title': 'PayU','img':AppAssets.payUIcon},
      {'title': 'instamojo','img':AppAssets.instamojoIcon},
      {'title': 'PayPal','img':AppAssets.payPalIcon},
    ];
    selectedPayment = paymentList[0];
  }

  updateSelectedPay(var address) {
    selectedPayment = address;
    notifyListeners();
  }
}