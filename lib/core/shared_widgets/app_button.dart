import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isDisabled;
  final bool isLoading;
  final Widget? prefixIcon;

  const MainButton({
    super.key,
    required this.onTap,
    required this.text,
    this.isDisabled = false,
    this.isLoading = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (isDisabled || isLoading) ? null : onTap,
      child: Container(
        height: AppSpacing.buttonHeightLg,
        decoration: BoxDecoration(
          color: (isDisabled || isLoading)
              ? Colors.transparent
              : AppColors.primary,
          borderRadius: AppSpacing.borderRadiusLg,
          border: Border.all(color: AppColors.primary, width: 1),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: const CircularProgressIndicator(
                    color: AppColors.white,
                    strokeWidth: 2,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (prefixIcon != null) ...[
                      prefixIcon!,
                      AppSpacing.gapW8,
                    ],
                    Text(
                      text,
                      style: AppTextStyles.font14WhiteSemiBold,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
