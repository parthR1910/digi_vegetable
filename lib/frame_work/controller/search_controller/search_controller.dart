
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../ui/utils/theme/app_assets.dart';
import '../../repository/model/product_data.dart';

final searchController = ChangeNotifierProvider((ref)=>SearchController());

class SearchController extends ChangeNotifier{

  List<ProductData> products=[
    ProductData(img: AppAssets.fruitsIcon, name: "Apple", price: 180, discount: 10, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.rootsIcon, name: "Beat Root", price: 20, discount: 20, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.bulbsImg, name: "Onion", price: 100, discount: 30, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.fruitsIcon, name: "Apple", price: 180, discount: 10, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.rootsIcon, name: "Beat Root", price: 20, discount: 20, isLiked: false, kg: "0kg",),
    ProductData(img: AppAssets.bulbsImg, name: "Onion", price: 100, discount: 30, isLiked: false, kg: "0kg",),
  ];

}