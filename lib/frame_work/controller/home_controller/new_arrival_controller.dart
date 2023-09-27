import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../../ui/utils/theme/app_assets.dart';
import '../../repository/model/product_data.dart';

final newArrivalController = ChangeNotifierProvider((ref) => NewArrivalController());

class NewArrivalController extends ChangeNotifier{

  @override
  void notifyListeners() {
    super.notifyListeners();
  }

  List<ProductData> products=[
    ProductData(img: AppAssets.orangeImg, name: "Nescafe Classic Coffee", price: 180, discount: 10, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.rootsIcon, name: "Cheese Puffs Chips", price: 20, discount: 20, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.orangeImg, name: "Radhuni Shemai-200 gm", price: 100, discount: 50, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.fruitsIcon, name: "Fresh lettuce", price: 90, discount: 10, isLiked: false, kg: "0kg",),
  ];

  updateLike(int index){
    products[index].isLiked = !products[index].isLiked;
    notifyListeners();
  }

  getItemOfData(int index,String itemData){
    if(itemData.isNotEmpty){
      products[index].kg = itemData;
    }
    notifyListeners();
  }
}
