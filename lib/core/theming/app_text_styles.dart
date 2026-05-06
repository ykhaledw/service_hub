import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_hub/core/theming/app_colors.dart';

class AppTextStyles {
  static TextStyle font14WhiteSemiBold = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    letterSpacing: 0,
    color: AppColors.white,
  );
  

  // ─── Typography ─────────────────────────────────────────────────────────────
  
  static TextStyle title = TextStyle(
    fontFamily: 'Inter',
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle subtitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
  );

  static TextStyle body = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static TextStyle small = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
}
