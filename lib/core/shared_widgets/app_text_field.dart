import 'package:flutter/material.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? rightLabel;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? errorText;
  final EdgeInsetsGeometry? contentPadding;

  const AppTextField({
    super.key,
    required this.label,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.rightLabel,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.controller,
    this.focusNode,
    this.errorText,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: AppTextStyles.font14WhiteSemiBold.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
            if (rightLabel != null) rightLabel!,
          ],
        ),
        AppSpacing.gapH8,
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          style: AppTextStyles.font14WhiteSemiBold.copyWith(
            color: AppColors.textPrimary,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
            hintStyle: AppTextStyles.font14WhiteSemiBold.copyWith(
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
              if (states.contains(WidgetState.focused)) {
                return AppColors.white;
              }
              return AppColors.transparent;
            }),
            contentPadding:
                contentPadding ??
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: AppSpacing.borderRadiusLg,
              borderSide: const BorderSide(color: AppColors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: AppSpacing.borderRadiusLg,
              borderSide: const BorderSide(color: AppColors.textHint),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: AppSpacing.borderRadiusLg,
              borderSide: const BorderSide(color: AppColors.textSecondary),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: AppSpacing.borderRadiusLg,
              borderSide: const BorderSide(color: AppColors.error),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: AppSpacing.borderRadiusLg,
              borderSide: const BorderSide(color: AppColors.error),
            ),
          ),
        ),
      ],
    );
  }
}
