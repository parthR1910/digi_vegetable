import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final myCartController = ChangeNotifierProvider((ref) => MyCartController());
class MyCartController extends ChangeNotifier{


  int quantity = 0;
  addQuantity(){
    quantity++;
    notifyListeners();
  }
  removeQuantity(){
    if(quantity != 0){
      quantity--;
    }
    notifyListeners();
  }
}