import 'package:doctopia/core/routing/routers.dart';
import 'package:doctopia/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (context) => const Placeholder());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
