import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

final productFilterController =
    ChangeNotifierProvider((ref) => ProductFilterController());

class ProductFilterController extends ChangeNotifier {
  List<FilterData> filters = [];
  List categoryFilterName = [
    "Pineapple",
    "Apple",
    "Carrot",
    "Onion",
    "Mango",
    "Beat Root",
    "Onion",
    "Peas",
    "Mango",
    "Beat Root",
    "Onion",
    "Peas",
    "Pineapple",
    "Apple",
    "Carrot",
    "Onion",
    "Mango",
    "Beat Root",
    "Onion",
    "Peas",
    "Mango",
    "Beat Root",
    "Onion",
    "Peas",
    "All"
  ];

  List sortByFilterList=[
    "Popular",
    "Most Recent",
    "Price High",
    "Price Medium",
    "Price Low"
  ];

  List ratingFilter=[
    5,4,3,2,1
  ];

  void inti(){
     filters = [
      FilterData(categoryName: "Category", filters: categoryFilterName.map((e) => Filter(id: 1, name: e)).toList()),
      FilterData(categoryName: "Sort by", filters: sortByFilterList.map((e) => Filter(id: 1, name: e)).toList()),
      FilterData(categoryName: "Rating", filters: ratingFilter.map((e) => Filter(id: 1, name: e.toString())).toList())
    ];
  }

  updateSelectedCategoryFilter(bool selected,int index){
      filters[0].filters[index].isSelected = selected;
      notifyListeners();
  }

  updateSelectedSortByFilter(bool selected,int index){
    filters[1].filters[index].isSelected = selected;
    notifyListeners();
  }
  updateSelectedRatingBYFilter(bool selected,int index){
    filters[2].filters[index].isSelected = selected;
    notifyListeners();
  }


  SfRangeValues rangeValues = const SfRangeValues(10,100);
  updateSliderValue(SfRangeValues values){
    rangeValues = values;
    notifyListeners();
  }

// RangeValues rangeValues = const RangeValues(10,100);
//   RangeValues rangeValues = const RangeValues(40.0, 80.0);
//   double tooltipPositionStart = 0.0;
//   double tooltipPositionEnd = 0.0;
// updateSliderValue(RangeValues values){
//    rangeValues = values;
//    tooltipPositionStart = values.start;
//   tooltipPositionEnd = values.end;
//   notifyListeners();
// }

}



class FilterData {
  final String categoryName;
  final List<Filter> filters;

  FilterData({required this.categoryName, required this.filters});
}

class Filter {
  final int id;
  final String name;
  bool isSelected;

  Filter({required this.id, required this.name, this.isSelected = false});
}
