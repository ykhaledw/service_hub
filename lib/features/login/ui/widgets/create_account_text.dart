import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: AppTextStyles.body.copyWith(fontSize: 16.sp),
        ),
        AppSpacing.horizontalSpace(4),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Create Account',
            style: AppTextStyles.font14WhiteSemiBold.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
