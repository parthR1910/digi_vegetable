import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:flutter/material.dart';
import '../on_boarding/on_boarding.dart';
import '../splash/splash.dart';

class RoutesManager{

  static Route onGenerateRoutes(RouteSettings settings){
    switch(settings.name){
      case AppRoute.slash:
        return MaterialPageRoute(builder: (context) => const Splash());
      case AppRoute.onBoarding:
        return MaterialPageRoute(builder: (context) => const OnBoarding());
      default:
        return MaterialPageRoute(
            builder: (context) => const Material(
                child: Center(child: Text('Something Went Wrong'))));
    }
  }
}