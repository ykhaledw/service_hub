import 'package:flutter/material.dart';
import 'package:service_hub/core/routing/routes.dart';
import 'package:service_hub/features/animated_splash_screen/animated_splash_screen.dart';
import 'package:service_hub/features/home_screen/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.animatedSplashScreen:
      return MaterialPageRoute(builder: (context) => const AnimatedSplashScreen());
      case Routes.homeScreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
      return MaterialPageRoute(builder: (context) => const AnimatedSplashScreen());
    }
  }
}