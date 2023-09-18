import 'package:digi_vegetable/ui/utils/theme/theme.dart';

final onBoardingController = ChangeNotifierProvider((ref) => OnBoardingController());

class OnBoardingController extends ChangeNotifier{
  PageController pageController = PageController();

  int index= 0;
  setPage(int i) {
    pageController.animateToPage(i, duration: const Duration(milliseconds: 200), curve:
    Curves.easeIn);
    index = i;
    notifyListeners();
  }

  nextButton(BuildContext context){
    index ++;
    pageController.animateToPage(index,duration: const Duration(milliseconds: 200), curve:
    Curves.easeIn);
    if(index == 3){
      index = 0;
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Scaffold(),));
    }
    notifyListeners();
  }

  onPageChange(int i){
    index = i;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
}