// ─────────────────────────────────────────────────────────────────────────────
// AppScreen — Responsiveness Abstraction Layer
//
// ✅ DO: Always use AppScreen.w(), AppScreen.h(), AppScreen.sp() in your UI.
// ❌ DON'T: Import or call flutter_screenutil directly in any widget/feature.
//
// If flutter_screenutil ever gets deprecated, you ONLY change this one file.
// The rest of your codebase stays untouched.
// ─────────────────────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScreen {
  AppScreen._(); // prevent instantiation

  // ── Design canvas size (match your Figma/design base) ──────────────────────
  static const Size designSize = Size(375, 812);

  // ── Width-based scaling ────────────────────────────────────────────────────
  /// Scale a value proportionally to screen width.
  /// Example: AppScreen.w(16) → 16px on a 375pt design, scales on others.
  static double w(double value) => value.w;

  // ── Height-based scaling ───────────────────────────────────────────────────
  /// Scale a value proportionally to screen height.
  static double h(double value) => value.h;

  // ── Font size scaling ──────────────────────────────────────────────────────
  /// Scale font sizes. Respects system text scale factor.
  static double sp(double value) => value.sp;

  // ── Uniform radius scaling ─────────────────────────────────────────────────
  /// Scale border radii and icon sizes uniformly (based on smaller dimension).
  static double r(double value) => value.r;

  // ── Screen dimensions ──────────────────────────────────────────────────────
  static double get screenWidth => 1.sw;
  static double get screenHeight => 1.sh;

  // ── Breakpoints ────────────────────────────────────────────────────────────
  static bool get isMobile => screenWidth < 600;
  static bool get isTablet => screenWidth >= 600 && screenWidth < 1024;
  static bool get isDesktop => screenWidth >= 1024;

  // ── Adaptive value helper ──────────────────────────────────────────────────
  /// Returns a different value based on current screen size category.
  /// Example:
  ///   AppScreen.adaptive(mobile: 12, tablet: 16, desktop: 20)
  static T adaptive<T>({
    required T mobile,
    T? tablet,
    T? desktop,
  }) {
    if (isDesktop) return desktop ?? tablet ?? mobile;
    if (isTablet) return tablet ?? mobile;
    return mobile;
  }
}



// ─────────────────────────────────────────────────────────────────────────────
// FALLBACK IMPLEMENTATION (no package needed)
//
// If flutter_screenutil is ever deprecated:
//   1. Delete the import on line 12
//   2. Replace the class body above with the class below
//   3. Call AppScreen.init(context) once inside your root widget's build()
//   4. Nothing else in your codebase changes ✅
// ─────────────────────────────────────────────────────────────────────────────

/*

import 'dart:math';
import 'package:flutter/material.dart';

class AppScreen {
  AppScreen._();

  static const Size designSize = Size(375, 812);

  // Stored once via init() — updated on every root build() call
  static double _screenWidth = designSize.width;
  static double _screenHeight = designSize.height;
  static double _textScaleFactor = 1.0;

  /// Call this once at the top of your root widget's build() method.
  /// Example:
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     AppScreen.init(context);  ← here
  ///     return Scaffold(...);
  ///   }
  static void init(BuildContext context) {
    final mq = MediaQuery.of(context);
    _screenWidth = mq.size.width;
    _screenHeight = mq.size.height;
    _textScaleFactor = mq.textScaler.scale(1.0);
  }

  static double w(double value) => value * (_screenWidth / designSize.width);
  static double h(double value) => value * (_screenHeight / designSize.height);
  static double sp(double value) => value * (_screenWidth / designSize.width) * _textScaleFactor;
  static double r(double value) => value * (
    min(_screenWidth, _screenHeight) / min(designSize.width, designSize.height)
  );

  static double get screenWidth  => _screenWidth;
  static double get screenHeight => _screenHeight;

  static bool get isMobile  => _screenWidth < 600;
  static bool get isTablet  => _screenWidth >= 600 && _screenWidth < 1024;
  static bool get isDesktop => _screenWidth >= 1024;

  static T adaptive<T>({required T mobile, T? tablet, T? desktop}) {
    if (isDesktop) return desktop ?? tablet ?? mobile;
    if (isTablet)  return tablet ?? mobile;
    return mobile;
  }
}

*/