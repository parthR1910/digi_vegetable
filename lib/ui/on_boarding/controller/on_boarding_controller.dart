import 'package:digi_vegetable/frame_work/repository/services/shared_pref_service/share_pref_service.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/app_constants.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
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
      SharePrefService.prefService.setBool(onBoardingAppearKey, true);
      context.pushAndRemoveUntilNamed(AppRoute.authIntro);
      // Navigator.push(context, MaterialPageRoute(builder: (context) => const Scaffold(),));
    }
    notifyListeners();
  }

  skipButton(BuildContext context){
    SharePrefService.prefService.setBool(onBoardingAppearKey, true);
    context.pushAndRemoveUntilNamed(AppRoute.authIntro);

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