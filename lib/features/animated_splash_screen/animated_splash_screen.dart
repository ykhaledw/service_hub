import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/helpers/extensions.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/routing/routes.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';

class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({super.key});

  @override
  State<AnimatedSplashScreen> createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _progressController;
  late Animation<double> _logoFade;
  late Animation<double> _logoScale;
  late Animation<double> _progress;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _logoFade = CurvedAnimation(parent: _logoController, curve: Curves.easeIn);
    _logoScale = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.easeOutBack),
    );

    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _progress = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _progressController, curve: Curves.easeInOut),
    );
    // Wait for the first frame to actually be drawn before starting the
    // animation sequence. On slow emulators, initState can run during a
    // multi-second UI freeze (skipped frames), causing the entire animation
    // to complete invisibly before anything is rendered on screen.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startSequence();
    });
  }

  Future<void> _startSequence() async {
    await _logoController.forward();
    await Future.wait([_progressController.forward(), _doAppInitialization()]);

    if (context.mounted) {
      context.pushReplacementNamed(Routes.homeScreen);
    }
  }

  Future<void> _doAppInitialization() async {
    await Future.delayed(const Duration(milliseconds: 2000));
  }

  @override
  void dispose() {
    _logoController.dispose();
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: Center(
        child: Column(
          children: [
            const Spacer(),

            //Logo
            FadeTransition(
              opacity: _logoFade,
              child: ScaleTransition(
                scale: _logoScale,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/svg/main_icon.svg'),
                    AppSpacing.verticalSpace(24),
                    Text(
                      'Service Hub',
                      style: AppTextStyles.title.copyWith(
                        color: AppColors.cardBackground,
                      ),
                    ),
                    AppSpacing.verticalSpace(8),
                    Text(
                      'Your premium service concierge.',
                      style: AppTextStyles.subtitle.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            //Loading progress
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 40),
              child: AnimatedBuilder(
                animation: _progress,
                builder: (context, _) {
                  return LinearProgressIndicator(
                    value: _progress.value,
                    backgroundColor: Colors.white.withValues(alpha: 0.35),
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    minHeight: 6,
                  );
                },
              ),
            ),
            // Column(
            //   children: [
            //     AnimatedBuilder(
            //       animation: _progress,
            //       builder: (context, _) {
            //         return Column(
            //           children: [
            //             LinearProgressIndicator(
            //               value: _progress.value,
            //               backgroundColor: colorScheme.onPrimary.withValues(
            //                 alpha: 0.3,
            //               ),
            //               valueColor: AlwaysStoppedAnimation<Color>(
            //                 colorScheme.onPrimary,
            //               ),
            //               borderRadius: AppSpacing.borderRadiusMd,
            //               minHeight: AppScreen.h(2),
            //             ),
            //           ],
            //         );
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
