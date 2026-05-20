import 'package:flutter/material.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';

class ThirdPartAuthContainer extends StatelessWidget {
  final Widget authIcon;
  final String authText;
  final void Function()? onTap;
  const ThirdPartAuthContainer({
    super.key,
    required this.authIcon,
    required this.authText, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: AppSpacing.borderRadiusLg,
            border: Border.all(color: AppColors.textHint),
          ),
          padding: EdgeInsets.symmetric(vertical: AppScreen.h(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              authIcon,
              AppSpacing.horizontalSpace(8),
              Text(
                authText,
                style: AppTextStyles.font14WhiteSemiBold.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
