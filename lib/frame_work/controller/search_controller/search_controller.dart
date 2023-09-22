import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../../ui/utils/theme/app_assets.dart';
import '../most_popular_controller/most_pupular_controller.dart';

final searchController = ChangeNotifierProvider((ref)=>SearchController());

class SearchController extends ChangeNotifier{

  List<ProductData> products=[
    ProductData(img: AppAssets.fruitsIcon, name: "Apple", price: 180, discount: 10, isLiked: false, items: "0kg",),
    ProductData(img: AppAssets.rootsIcon, name: "Beat Root", price: 20, discount: 20, isLiked: false, items: "0kg",),
    ProductData(img: AppAssets.bulbsImg, name: "Onion", price: 100, discount: 30, isLiked: false, items: "0kg",),
    ProductData(img: AppAssets.fruitsIcon, name: "Apple", price: 180, discount: 10, isLiked: false, items: "0kg",),
    ProductData(img: AppAssets.rootsIcon, name: "Beat Root", price: 20, discount: 20, isLiked: false, items: "0kg",),
    ProductData(img: AppAssets.bulbsImg, name: "Onion", price: 100, discount: 30, isLiked: false, items: "0kg",),
  ];

}