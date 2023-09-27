import 'package:digi_vegetable/frame_work/controller/wishlist_controller/wishlist_controller.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../ui/utils/theme/app_assets.dart';
import '../../repository/model/product_data.dart';

final mostPopularFilterController = ChangeNotifierProvider((ref) => MostPopularFilterController(ref));

class MostPopularFilterController extends ChangeNotifier{
  MostPopularFilterController(this.ref);
  Ref ref;

  String selectFilterName = "All";


  @override
  void notifyListeners() {
    super.notifyListeners();
  }

  List<ProductData> products=[
    ProductData(img: AppAssets.fruitsIcon, name: "Apple", price: 180, discount: 10, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.rootsIcon, name: "Beat Root", price: 20, discount: 20, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.bulbsImg, name: "Onion", price: 100, discount: 30, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.fruitsIcon, name: "Apple", price: 180, discount: 10, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.rootsIcon, name: "Beat Root", price: 20, discount: 20, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.bulbsImg, name: "Onion", price: 100, discount: 30, isLiked: false, kg: "0kg",),
  ];

  updateLike(int index){
    products[index].isLiked = !products[index].isLiked;
    if(products[index].isLiked){
      ref.read(wishListController).addData(products[index]);
    }else{
      ref.read(wishListController).removeData(products[index]);
    }
    notifyListeners();
  }

  getItemOfData(int index,String itemData){
    if(itemData.isNotEmpty){
      products[index].kg = itemData;
    }
    notifyListeners();
  }

  setFavourite(ProductData product,bool val){
    final i = products.indexOf(product);
    products[i].isLiked = val;
    notifyListeners();
  }
}

