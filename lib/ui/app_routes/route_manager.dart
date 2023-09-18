import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/auth/auth_intro/auth_intro.dart';
import 'package:digi_vegetable/ui/auth/forget_password/change_pass_greeting/change_password_greeting.dart';
import 'package:digi_vegetable/ui/auth/forget_password/forget_passwrod/forget_password.dart';
import 'package:digi_vegetable/ui/auth/forget_password/otp/otp.dart';
import 'package:digi_vegetable/ui/auth/forget_password/set_new_password/set_new_password.dart';
import 'package:digi_vegetable/ui/auth/login/login.dart';
import 'package:digi_vegetable/ui/auth/register/register.dart';
import 'package:digi_vegetable/ui/auth/register/register_details.dart';
import 'package:digi_vegetable/ui/auth/register/register_greeting.dart';
import 'package:digi_vegetable/ui/auth/register/register_otp.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../on_boarding/on_boarding.dart';
import '../splash/splash.dart';

class RoutesManager {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.splash:
        return PageTransition(child: const Splash(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 500));
        // return MaterialPageRoute(builder: (context) => const Splash());
      case AppRoute.onBoarding:
        return PageTransition(child: const OnBoarding(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
        // return MaterialPageRoute(builder: (context) => const OnBoarding());
      case AppRoute.authIntro:
        return PageTransition(child: const AuthIntro(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
        // return MaterialPageRoute(builder: (context) => const AuthIntro());
      case AppRoute.login:
        return PageTransition(child: const Login(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
        // return MaterialPageRoute(builder: (context) => const Login());
      case AppRoute.register:
        return PageTransition(child: const Register(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
        // return MaterialPageRoute(builder: (context) => const Register());
      case AppRoute.registerDetails:
        return PageTransition(child: const RegisterDetails(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
    // return MaterialPageRoute(builder: (context) => const Register());
      case AppRoute.registerOtp:
        return PageTransition(child: const RegisterOTP(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
    // return MaterialPageRoute(builder: (context) => const Register());
      case AppRoute.registerGreeting:
        return PageTransition(child: const RegisterGreeting(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
    // return MaterialPageRoute(builder: (context) => const Register());
      case AppRoute.forgetPassword:
        return PageTransition(child: const ForgetPassword(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.otp:
        return PageTransition(child: const OTP(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));

      case AppRoute.setNewPassword:
        return PageTransition(child: const SetNewPassword(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.changePassGreeting:
        return PageTransition(child: const PasswordChangeGreeting(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      default:
        return MaterialPageRoute(
            builder: (context) => const Material(
                child: Center(child: Text('Something Went Wrong'))));
    }
  }
}
