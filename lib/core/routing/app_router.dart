import 'package:flutter/material.dart';
import 'package:service_hub/core/routing/routes.dart';
import 'package:service_hub/features/animated_splash_screen/animated_splash_screen.dart';
import 'package:service_hub/features/home_screen/home_screen.dart';
import 'package:service_hub/features/login/ui/login_screen.dart';
import 'package:service_hub/features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.animatedSplashScreen:
      return MaterialPageRoute(builder: (context) => const AnimatedSplashScreen());
      case Routes.homeScreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.loginScreen:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.signUpScreen:
      return MaterialPageRoute(builder: (context) => const SignUpScreen());
      default:
      return MaterialPageRoute(builder: (context) => const AnimatedSplashScreen());
    }
  }
}