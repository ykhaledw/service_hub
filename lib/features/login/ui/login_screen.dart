import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';
import 'package:service_hub/features/login/ui/widgets/create_account_text.dart';
import 'package:service_hub/features/login/ui/widgets/login_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppScreen.h(17),
                    vertical: AppScreen.h(12),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: AppSpacing.borderRadiusXl,
                  ),
                  child: SvgPicture.asset('assets/svg/suitcase.svg'),
                ),
                AppSpacing.verticalSpace(16),
                Text(
                  'Welcome back',
                  style: AppTextStyles.subtitle.copyWith(
                    fontSize: AppScreen.sp(24),
                    color: AppColors.textPrimary,
                  ),
                ),
                AppSpacing.verticalSpace(4),
                Text(
                  'Please enter your details to sign in',
                  style: AppTextStyles.body.copyWith(
                    fontSize: AppScreen.sp(16),
                    color: AppColors.black,
                  ),
                ),
                AppSpacing.verticalSpace(32),
                LoginCard(),
                AppSpacing.verticalSpace(32),
                const CreateAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
