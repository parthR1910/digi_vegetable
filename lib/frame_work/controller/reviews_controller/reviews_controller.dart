import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final reviewsController = ChangeNotifierProvider((ref)=>ReviewsController());

class ReviewsController extends ChangeNotifier{


  List<RatingData> ratingFilter=[
    RatingData(name: 5),
    RatingData(name: 4),
    RatingData(name: 3),
    RatingData(name: 2),
    RatingData(name: 1),
  ];

  updateSelectedRating(bool selected,int index){
    ratingFilter[index].isSelected = selected;
    notifyListeners();
  }

}

class RatingData{
  final int name;
  bool isSelected;
  RatingData({required this.name,this.isSelected = false});
}