import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final shippingAddressController = ChangeNotifierProvider((ref) => ShippingAddressController());

class ShippingAddressController extends ChangeNotifier{

  Map<String, String>? selectedAddress;
  List<Map<String, String>> dummyAddresses = [];

  init() {
    dummyAddresses = [
      {'title': 'Home', 'data': '61480 Sunbrook Park, PC 5679'},
      {'title': 'Office', 'data': '6993 Meadow Valley Terra. PC 3637'},
      {'title': 'Apartment', 'data': '21833 Clyde Gallagher, PC 4662'},
      {'title': "Parent's House", 'data': '5259 Blue Bill Park. PC 4627'},
    ];
    selectedAddress = dummyAddresses[0];
  }

  updateSelectAddress(var address) {
    selectedAddress = address;
    notifyListeners();
  }
}