import 'package:digi_vegetable/ui/category/category.dart';
import 'package:digi_vegetable/ui/home/home.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

import '../../my_cart/my_cart.dart';
import '../../my_order/my_order.dart';

final dashBoardController = ChangeNotifierProvider((ref) => DashBoardController(ref));

class DashBoardController extends ChangeNotifier{
  Ref ref;
  DashBoardController(this.ref);

  int selectedIndex = 0;

  List<Widget> pages = [
    const Home(),
    const Category(),
    const MyCart(),
    const MyOrders(),
    Container(),
  ];

  updateSelectedIndex(int pageIndex){
    selectedIndex = pageIndex;
    notifyListeners();
  }

  setPageInit(int index){
    switch(index){
      case 0:
        // ref.read(homeController).
        break;
      case 1:
        /// call init here
        break;
      case 2:
      /// call init here
        break;
      case 4:
      /// call init here
        break;
    }
  }
}