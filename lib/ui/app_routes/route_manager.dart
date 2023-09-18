import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/auth/auth_intro/auth_intro.dart';
import 'package:digi_vegetable/ui/auth/login/login.dart';
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
      case AppRoute.authIntro:
        return MaterialPageRoute(builder: (context) => const AuthIntro());
        case AppRoute.login:
        return MaterialPageRoute(builder: (context) => const Login());
      default:
        return MaterialPageRoute(
            builder: (context) => const Material(
                child: Center(child: Text('Something Went Wrong'))));
    }
  }
}