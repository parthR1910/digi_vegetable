import 'package:digi_vegetable/frame_work/repository/services/shared_pref_service/share_pref_service.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/utils/app_constants.dart';
import 'package:digi_vegetable/ui/utils/extension/context_extension.dart';
import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import '../utils/theme/theme.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),() {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnBoarding(),));
      bool isOnboardingPage = SharePrefService.prefService.getBool(onBoardingAppearKey);
      if(isOnboardingPage){
        Navigator.pushReplacementNamed(context, AppRoute.authIntro);
      }else{
        context.pushAndReplaceNamed(AppRoute.onBoarding);
      }
    },);

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
          child: Image.asset(AppAssets.slash,fit: BoxFit.cover,)),
    );
  }
}
