import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:service_hub/core/routing/app_router.dart';
import 'package:service_hub/service_hub.dart';

void main() {
  final widgetsFlutterBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsFlutterBinding);
  runApp(ServiceHub(appRouter: AppRouter()));
}
