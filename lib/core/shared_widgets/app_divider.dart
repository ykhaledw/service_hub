import 'package:flutter/material.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';

class AppDivider extends StatelessWidget {
  final String? text;
  final double horizontalPadding;
  final double thickness;
  final Color? color;

  const AppDivider({
    super.key,
    this.text,
    this.horizontalPadding = 0.0,
    this.thickness = 1.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final dividerColor = color ?? AppColors.borderDark;

    // Case 1: Divider with text in the middle
    if (text != null && text!.isNotEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Row(
          children: [
            Expanded(
              child: Divider(color: dividerColor, thickness: thickness),
            ),
            Padding(
              // The space between the divider lines and the text
              padding: EdgeInsets.symmetric(horizontal: AppScreen.w(16)),
              child: Text(text!, style: AppTextStyles.small),
            ),
            Expanded(
              child: Divider(color: dividerColor, thickness: thickness),
            ),
          ],
        ),
      );
    }

    // Cases 2 & 3: Standard Divider (with or without horizontal padding)
    return Divider(
      color: dividerColor,
      thickness: thickness,
      indent: horizontalPadding,
      endIndent: horizontalPadding,
    );
  }
}
