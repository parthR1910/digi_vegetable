import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final paymentMethodController = ChangeNotifierProvider((ref) => PaymentMethodController());

class PaymentMethodController extends ChangeNotifier{

  Map<String, dynamic>? selectedPayMethod;
  List<Map<String, dynamic>> paymentMethodList = [];

  init() {
    paymentMethodList = [
      {'title': 'Online Payment', 'img':AppAssets.cashOnDeliveryIcon},
      {'title': 'Cash on Delivery','img':AppAssets.moneyTransferIcon},
    ];
    selectedPayMethod = paymentMethodList[0];
  }

  updateSelectedPayMethod(var address) {
    selectedPayMethod = address;
    notifyListeners();
  }
}
//
// class PaymentMethods{
//   final String name;
//   bool isSelected;
//   PaymentMethods({required this.name,this.isSelected = false});
// }