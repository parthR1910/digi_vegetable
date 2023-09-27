import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../ui/utils/theme/app_assets.dart';
import '../../repository/model/product_data.dart';

final myCartController = ChangeNotifierProvider((ref) => MyCartController());
class MyCartController extends ChangeNotifier{


  addQuantity(int index){
    products![index].quantity++;
    notifyListeners();
  }
  removeQuantity(int index){
    if(products![index].quantity != 0){
      products![index].quantity--;
    }
    notifyListeners();
  }

  List<ProductData>? products;
  init(){
    products=[
      ProductData(img: AppAssets.ginGerImg, name: "Arabic Ginger", price: 580, discount: 10, isLiked: false, kg: "6kg",quantity: 0),
      ProductData(img: AppAssets.ginGerImg, name: "Arabic Ginger", price: 380, discount: 10, isLiked: false, kg: "5kg",quantity: 0),
      ProductData(img: AppAssets.ginGerImg, name: "Arabic Ginger", price: 154, discount: 10, isLiked: false, kg: "7kg",quantity: 0),
      ProductData(img: AppAssets.ginGerImg, name: "Arabic Ginger", price: 604, discount: 10, isLiked: false, kg: "6kg",quantity: 0),
      ProductData(img: AppAssets.ginGerImg, name: "Arabic Ginger", price: 135, discount: 10, isLiked: false, kg: "3kg",quantity: 0),
      ProductData(img: AppAssets.ginGerImg, name: "Arabic Ginger", price: 235, discount: 10, isLiked: false, kg: "4kg",quantity: 0),
    ];
  }




  deleteItem(int index){
    products!.removeAt(index);
    notifyListeners();
  }
}