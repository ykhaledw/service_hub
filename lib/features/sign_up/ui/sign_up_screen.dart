import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/shared_widgets/card_container.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';
import 'package:service_hub/features/sign_up/ui/widgets/steps_display.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/svg/main_logo.svg'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StepsDisplay(),
                AppSpacing.verticalSpace(32),
                Text(
                  'Create an account',
                  style: AppTextStyles.subtitle.copyWith(
                    fontSize: AppScreen.sp(24),
                    color: AppColors.textPrimary,
                  ),
                ),
                AppSpacing.verticalSpace(4),
                Text(
                  'Enter your details to get started',
                  style: AppTextStyles.body.copyWith(
                    fontSize: AppScreen.sp(16),
                    color: AppColors.textPrimary,
                  ),
                ),
                AppSpacing.verticalSpace(24),
                CardContainer(child: Column()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
