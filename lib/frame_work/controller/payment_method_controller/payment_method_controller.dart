import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final paymentMethodController = ChangeNotifierProvider((ref) => PaymentMethodController());

class PaymentMethodController extends ChangeNotifier{

  Map<String, dynamic>? selectedAddress;
  List<Map<String, dynamic>> dummyAddresses = [];

  init() {
    dummyAddresses = [
      {'title': 'Online Payment', 'img':AppAssets.cashOnDeliveryIcon},
      {'title': 'Cash on Delivery','img':AppAssets.moneyTransferIcon},
    ];
    selectedAddress = dummyAddresses[0];
  }

  updateSelectAddress(var address) {
    selectedAddress = address;
    notifyListeners();
  }
}
//
// class PaymentMethods{
//   final String name;
//   bool isSelected;
//   PaymentMethods({required this.name,this.isSelected = false});
// }