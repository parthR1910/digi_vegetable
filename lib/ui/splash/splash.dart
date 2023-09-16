import 'package:digi_vegetable/ui/utils/theme/app_assets.dart';
import '../on_boarding/on_boarding.dart';
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
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnBoarding(),));
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
