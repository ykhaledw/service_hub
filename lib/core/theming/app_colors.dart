import 'package:flutter/material.dart';

/// Centralized color palette for the Service Hub application.
/// All colors used across the app should be referenced from this class.
abstract final class AppColors {
  // ─── Primary Brand Colors ───────────────────────────────────────────────────
  static const Color primary = Color(0xFF3525CD);
  static const Color primaryLight = Color(0xFF7B92F8);
  static const Color primaryDark = Color(0xFF2C47D9);

  // ─── Secondary / Accent Colors ──────────────────────────────────────────────
  static const Color secondary = Color(0xFF00C6AE);
  static const Color secondaryLight = Color(0xFF4DD9C7);
  static const Color secondaryDark = Color(0xFF009E8B);

  // ─── Background Colors ──────────────────────────────────────────────────────
  static const Color background = Color(0xFFF5F7FF);
  static const Color backgroundDark = Color(0xFF0F1120);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF1C1F35);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color cardBackgroundDark = Color(0xFF252840);

  // ─── Text Colors ────────────────────────────────────────────────────────────
  static const Color textPrimary = Color(0xFF1A1D2E);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textHint = Color(0xFFADB5BD);
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  static const Color textPrimaryDark = Color(0xFFF1F3FF);
  static const Color textSecondaryDark = Color(0xFFA0A8C0);

  // ─── Status / Semantic Colors ────────────────────────────────────────────────
  static const Color success = Color(0xFF22C55E);
  static const Color successLight = Color(0xFFDCFCE7);
  static const Color warning = Color(0xFFF59E0B);
  static const Color warningLight = Color(0xFFFEF3C7);
  static const Color error = Color(0xFFEF4444);
  static const Color errorLight = Color(0xFFFEE2E2);
  static const Color info = Color(0xFF3B82F6);
  static const Color infoLight = Color(0xFFDBEAFE);

  // ─── Border & Divider Colors ─────────────────────────────────────────────────
  static const Color border = Color(0xFFE5E7EB);
  static const Color borderDark = Color(0xFF2E3250);
  static const Color divider = Color(0xFFF3F4F6);
  static const Color dividerDark = Color(0xFF252840);

  // ─── Icon Colors ────────────────────────────────────────────────────────────
  static const Color icon = Color(0xFF6B7280);
  static const Color iconActive = Color(0xFF4F6AF5);
  static const Color iconDark = Color(0xFFA0A8C0);

  // ─── Gradient Definitions ───────────────────────────────────────────────────
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkBackgroundGradient = LinearGradient(
    colors: [Color(0xFF0F1120), Color(0xFF1C1F35)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // ─── Shimmer / Skeleton Colors ───────────────────────────────────────────────
  static const Color shimmerBase = Color(0xFFE0E0E0);
  static const Color shimmerHighlight = Color(0xFFF5F5F5);
  static const Color shimmerBaseDark = Color(0xFF2A2D45);
  static const Color shimmerHighlightDark = Color(0xFF353860);

  // ─── Overlay & Shadow Colors ─────────────────────────────────────────────────
  static const Color overlay = Color(0x80000000);
  static const Color shadow = Color(0x1A4F6AF5);
  static const Color shadowDark = Color(0x33000000);

  // ─── Miscellaneous ───────────────────────────────────────────────────────────
  static const Color transparent = Colors.transparent;
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
}
