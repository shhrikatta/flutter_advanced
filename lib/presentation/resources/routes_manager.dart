import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/forgot_password/forgot_password_view.dart';
import 'package:flutter_advanced/presentation/login/login_view.dart';
import 'package:flutter_advanced/presentation/main/main_view.dart';
import 'package:flutter_advanced/presentation/onboarding/onboarding_view.dart';
import 'package:flutter_advanced/presentation/register/register_view.dart';
import 'package:flutter_advanced/presentation/splash/splash.dart';
import 'package:flutter_advanced/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoardingRoute";
  static const String loginRoute = "/loginRoute";
  static const String registerRoute = "/registerRoute";
  static const String forgotPasswordRoute = "/forgotPasswordRoute";
  static const String mainRoute = "/mainRoute";
  static const String storeDetailsRoute = "/storeDetailsRoute";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
          appBar: AppBar(title: const Text("No Route Found")),
          body: const Center(child: Text("No Route Found"))),
    );
  }
}
