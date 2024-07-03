import 'package:doctopia/core/di/dependency_injection.dart';
import 'package:doctopia/core/routing/routers.dart';
import 'package:doctopia/features/login/logic/cubit/login_cubit.dart';
import 'package:doctopia/features/login/ui/login_screen.dart';
import 'package:doctopia/features/onboarding/onboarding_screen.dart';
import 'package:doctopia/features/tests/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (context) => const Placeholder());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.testRoute:
        return MaterialPageRoute(builder: (context) => const TestScreen());
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
