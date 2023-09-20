import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final topCategoryController = ChangeNotifierProvider((ref) => TopCategoryController());

class TopCategoryController extends ChangeNotifier{
  
  
  List<TopCategoryProductData> products= [
    TopCategoryProductData(image: AppAssets.ginGerImg, name: "Arabic Ginger"),
    TopCategoryProductData(image: AppAssets.ginGerImg, name: "Butternut Squash"),
    TopCategoryProductData(image: AppAssets.ginGerImg, name: "Arabic Ginger"),
    TopCategoryProductData(image: AppAssets.ginGerImg, name: "Arabic Ginger"),
  ];

}

class TopCategoryProductData{
  String image;
  String name;
  TopCategoryProductData({required this.image,required this.name});
}