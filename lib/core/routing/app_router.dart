
import 'package:flutter/material.dart';
import 'package:fruit_hup/core/routing/routes.dart';
import 'package:fruit_hup/features/auth/presentation/views/signin_view.dart';
import 'package:fruit_hup/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_hup/features/splash/presentation/views/splash_view.dart';
class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );

      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );case Routes.signInView:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );
      default:
        return null;
    }
  }
}
//final arguments = settings.arguments;
