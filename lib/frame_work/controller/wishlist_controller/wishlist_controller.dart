
import '../../../ui/utils/theme/theme.dart';
import '../most_popular_controller/most_pupular_controller.dart';

final wishListController = ChangeNotifierProvider((ref)=>WishListController(ref));

class WishListController extends ChangeNotifier{
    WishListController(this.ref);
    Ref ref;

  List<ProductData> wishList= [];

  addData(ProductData product){
    wishList.add(product);
    notifyListeners();
  }

  removeData(ProductData product){
    wishList.remove(product);
    notifyListeners();
  }

  // deleteData(ProductData product){
  //   wishList.remove(product);
  //   ref.watch(mostPopularFilterController).setFavourite(product, false);
  //   notifyListeners();
  // }

  getItemOfData(int index,String itemData){
    if(itemData.isNotEmpty){
      wishList[index].items = itemData;
    }
    notifyListeners();
  }
}