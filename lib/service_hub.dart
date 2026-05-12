import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/routing/app_router.dart';
import 'package:service_hub/core/routing/routes.dart';

class ServiceHub extends StatelessWidget {
  final AppRouter appRouter;
  const ServiceHub({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppScreen.designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Service Hub',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: Routes.animatedSplashScreen,
        onGenerateRoute: appRouter.generateRoute,
        // home: child,
      ),
      // child: const Scaffold(),
    );
  }
}
