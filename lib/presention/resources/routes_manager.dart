import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storezewin/presention/forget_password/forget_password_view.dart';
import 'package:storezewin/presention/login/login_view.dart';
import 'package:storezewin/presention/main/main_view.dart';

import 'package:storezewin/presention/register/register_view.dart';
import 'package:storezewin/presention/resources/strings_manager.dart';
import 'package:storezewin/presention/splash/splash_view.dart';
import 'package:storezewin/presention/store_details/store_details_view.dart';

import '../onboarding/onboarding_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String onBoardingRoute = '/onBoarding';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
        );
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (context) => const MainView(),
        );
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(
          builder: (context) => const StoreDetailsView(),
        );
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text(AppString.noRouteFound),
        ),
        body: const Center(
          child: Text(AppString.noRouteFound),
        ),
      ),
    );
  }
}
