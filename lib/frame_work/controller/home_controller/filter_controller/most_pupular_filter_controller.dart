import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../../ui/utils/theme/app_assets.dart';

final mostPopularFilterController = ChangeNotifierProvider((ref) => MostPopularFilterController());

class MostPopularFilterController extends ChangeNotifier{


  String selectFilterName = "All";


  @override
  void notifyListeners() {
    super.notifyListeners();
  }

  List<PopularProductData> products=[
    PopularProductData(img: AppAssets.fruitsIcon, name: "Apple", price: 180, discount: 10, isLiked: false, items: "0kg",),
    PopularProductData(img: AppAssets.rootsIcon, name: "Beat Root", price: 20, discount: 20, isLiked: false, items: "0kg",),
    PopularProductData(img: AppAssets.bulbsImg, name: "Onion", price: 100, discount: 30, isLiked: false, items: "0kg",),
    PopularProductData(img: AppAssets.fruitsIcon, name: "Apple", price: 180, discount: 10, isLiked: false, items: "0kg",),
    PopularProductData(img: AppAssets.rootsIcon, name: "Beat Root", price: 20, discount: 20, isLiked: false, items: "0kg",),
    PopularProductData(img: AppAssets.bulbsImg, name: "Onion", price: 100, discount: 30, isLiked: false, items: "0kg",),
  ];

  updateLike(int index){
    products[index].isLiked = !products[index].isLiked;
    notifyListeners();
  }

  getItemOfData(int index,String itemData){
    if(itemData.isNotEmpty){
      products[index].items = itemData;
    }
    notifyListeners();
  }
}

class PopularProductData{
  final String img;
  bool isLiked;
  int discount;
  final String name;
  int price;
  String items;
  PopularProductData({required this.img,required this.name,required this.isLiked,required this.price,required this.discount,required this.items});
}