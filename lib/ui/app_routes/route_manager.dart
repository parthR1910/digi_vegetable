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
import 'package:digi_vegetable/ui/check_out/check_out.dart';
import 'package:digi_vegetable/ui/dash_board/dash_board.dart';
import 'package:digi_vegetable/ui/most_popular/most_popular.dart';
import 'package:digi_vegetable/ui/notification/notification.dart';
import 'package:digi_vegetable/ui/payment_method/payment_method.dart';
import 'package:digi_vegetable/ui/product_detail/product_detail.dart';
import 'package:digi_vegetable/ui/product_filter/filter.dart';
import 'package:digi_vegetable/ui/product_filter/helper/category_filter/category_selection.dart';
import 'package:digi_vegetable/ui/reviews/reviews.dart';
import 'package:digi_vegetable/ui/search/search.dart';
import 'package:digi_vegetable/ui/shipping_address/shipping_address.dart';
import 'package:digi_vegetable/ui/wish_list/wish_list.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../on_boarding/on_boarding.dart';
import '../splash/splash.dart';

class RoutesManager {
  static Route onGenerateRoutes(RouteSettings settings) {
    final args = settings.arguments as Map<String,dynamic>?;

    final isFromFilter = args?["isFromFilterKey"]??false;
    final isFromSearch = args?["isFromSearchKey"]??false;

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
      case AppRoute.dashBoard:
        return PageTransition(child: const DashBoard(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.wishList:
        return PageTransition(child: const WishList(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.search:
        return PageTransition(child:  Search(isFormFilterKet: isFromFilter,), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.notification:
        return PageTransition(child: const Notifications(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.filter:
        return PageTransition(child: Filter(isFromSearch: isFromSearch), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.categorySelection:
        return PageTransition(child: const CategorySelection(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.productDetail:
        return PageTransition(child: const ProductDetail(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.mostPopular:
        return PageTransition(child: const MostPopular(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.review:
        return PageTransition(child: const Reviews(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.checkOut:
        return PageTransition(child: const CheckOut(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.shippingAddress:
        return PageTransition(child: const ShippingAddress(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));
      case AppRoute.paymentMethod:
        return PageTransition(child: const PaymentMethod(), type: PageTransitionType.fade,duration: const Duration(milliseconds: 300));

      default:
        return MaterialPageRoute(
            builder: (context) => const Material(
                child: Center(child: Text('Something Went Wrong'))));
    }
  }
}
