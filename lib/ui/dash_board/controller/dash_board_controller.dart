import 'package:digi_vegetable/ui/category/category.dart';
import 'package:digi_vegetable/ui/home/home.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final dashBoardController = ChangeNotifierProvider((ref) => DashBoardController());

class DashBoardController extends ChangeNotifier{
  int selectedIndex = 0;

  List<Widget> pages = [
    const Home(),
    const Category(),
    Container(),
    Container(),
    Container(),
  ];

  updateSelectedIndex(int pageIndex){
    selectedIndex = pageIndex;
    notifyListeners();
  }}