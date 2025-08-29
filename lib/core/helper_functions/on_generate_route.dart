import 'package:app_fruit/features/auth/login/presentation/view/login_view.dart';
import 'package:app_fruit/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:app_fruit/features/splash/presenttion/views/splash_view.dart';
import 'package:flutter/material.dart';


Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());
    // Define your routes here
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}