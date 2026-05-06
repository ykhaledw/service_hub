import 'package:flutter/material.dart';
import 'screen_utils.dart';

class AppSpacing {
  AppSpacing._(); // prevent instantiation

  // ── Padding & Margin (Double values) ───────────────────────────────────────
  
  /// Base horizontal padding (usually left/right screen padding)
  static double get screenPaddingH => AppScreen.w(24);
  
  /// Base vertical padding (usually top/bottom screen padding)
  static double get screenPaddingV => AppScreen.h(24);

  // ── Gap Widgets (SizedBox) ─────────────────────────────────────────────────
  
  // Custom precise gaps
  static Widget horizontalSpace(double width) => SizedBox(width: AppScreen.w(width));
  static Widget verticalSpace(double height) => SizedBox(height: AppScreen.h(height));

  // Horizontal gaps
  static Widget get gapW4 => SizedBox(width: AppScreen.w(4));
  static Widget get gapW8 => SizedBox(width: AppScreen.w(8));
  static Widget get gapW12 => SizedBox(width: AppScreen.w(12));
  static Widget get gapW16 => SizedBox(width: AppScreen.w(16));
  static Widget get gapW20 => SizedBox(width: AppScreen.w(20));
  static Widget get gapW24 => SizedBox(width: AppScreen.w(24));
  static Widget get gapW32 => SizedBox(width: AppScreen.w(32));

  // Vertical gaps
  static Widget get gapH4 => SizedBox(height: AppScreen.h(4));
  static Widget get gapH8 => SizedBox(height: AppScreen.h(8));
  static Widget get gapH12 => SizedBox(height: AppScreen.h(12));
  static Widget get gapH16 => SizedBox(height: AppScreen.h(16));
  static Widget get gapH20 => SizedBox(height: AppScreen.h(20));
  static Widget get gapH24 => SizedBox(height: AppScreen.h(24));
  static Widget get gapH32 => SizedBox(height: AppScreen.h(32));
  static Widget get gapH40 => SizedBox(height: AppScreen.h(40));
  static Widget get gapH48 => SizedBox(height: AppScreen.h(48));
  static Widget get gapH64 => SizedBox(height: AppScreen.h(64));

  // ── Border Radius ──────────────────────────────────────────────────────────
  
  // Radius values
  static double get radiusSm => AppScreen.r(4);
  static double get radiusMd => AppScreen.r(8);
  static double get radiusLg => AppScreen.r(12);
  static double get radiusXl => AppScreen.r(16);
  static double get radiusXxl => AppScreen.r(24);

  // BorderRadius objects
  static BorderRadius get borderRadiusSm => BorderRadius.circular(radiusSm);
  static BorderRadius get borderRadiusMd => BorderRadius.circular(radiusMd);
  static BorderRadius get borderRadiusLg => BorderRadius.circular(radiusLg);
  static BorderRadius get borderRadiusXl => BorderRadius.circular(radiusXl);
  static BorderRadius get borderRadiusXxl => BorderRadius.circular(radiusXxl);

  // ── Component Sizes ────────────────────────────────────────────────────────
  
  // Buttons
  static double get buttonHeightSm => AppScreen.h(36);
  static double get buttonHeightMd => AppScreen.h(44);
  static double get buttonHeightLg => AppScreen.h(48);
  static double get buttonWidthLg => double.infinity; // Usually takes full width
  static double get buttonRadius => AppScreen.r(12);

  // Inputs
  static double get inputHeightSm => AppScreen.h(45);
  static double get inputHeightMd => AppScreen.h(48);
  static double get inputHeightLg => AppScreen.h(51);
  static double get inputRadius => AppScreen.r(12);

  // Icons
  static double get iconSizeSm => AppScreen.r(16);
  static double get iconSizeMd => AppScreen.r(24);
  static double get iconSizeLg => AppScreen.r(32);
  static double get iconSizeXl => AppScreen.r(40);
  
  // Bottom Navigation Bar
  static double get bottomNavBarHeight => AppScreen.h(80);
}
