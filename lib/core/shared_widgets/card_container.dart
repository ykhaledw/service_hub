import 'package:flutter/material.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;

  const CardContainer({
    super.key,
    required this.child,
    this.padding,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(
        horizontal: AppScreen.w(16),
        vertical: AppScreen.h(16),
      ),
      decoration: BoxDecoration(
        color: color ?? AppColors.white,
        borderRadius: borderRadius ?? AppSpacing.borderRadiusLg,
      ),
      child: child,
    );
  }
}
