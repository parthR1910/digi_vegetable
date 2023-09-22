
import 'package:carousel_slider/carousel_controller.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final productDetailController = ChangeNotifierProvider((ref) => ProductDetailController());

class ProductDetailController extends ChangeNotifier{
  CarouselController controller = CarouselController();

  int pageIndex= 0;
  setPage(int i) {
    controller.animateToPage(i, duration: const Duration(milliseconds: 200), curve:
    Curves.easeIn);
    pageIndex = i;
    notifyListeners();
  }

  int quantity = 0;
  addQuantity(){
    quantity++;
    notifyListeners();
  }
  removeQuantity(){
    quantity--;
    notifyListeners();
  }

}