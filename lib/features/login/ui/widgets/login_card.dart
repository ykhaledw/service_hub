import 'package:flutter/material.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/shared_widgets/app_button.dart';
import 'package:service_hub/core/shared_widgets/app_divider.dart';
import 'package:service_hub/core/shared_widgets/app_text_field.dart';
import 'package:service_hub/core/shared_widgets/card_container.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';
import 'package:service_hub/features/login/ui/widgets/third_part_auth.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppScreen.w(20)),
      child: CardContainer(
        padding: EdgeInsets.symmetric(
          horizontal: AppScreen.w(16),
          vertical: AppScreen.h(32),
        ),
        child: Column(
          children: [
            AppTextField(label: 'Email', hintText: 'name@example.com'),
            AppSpacing.verticalSpace(24),
            AppTextField(
              label: 'Password',
              hintText: '••••••••••',
              rightLabel: GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot Password?',
                  style: AppTextStyles.font14WhiteSemiBold.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            AppSpacing.verticalSpace(24),
            MainButton(onTap: () {}, text: 'Login'),
            AppSpacing.verticalSpace(24),
            AppDivider(text: 'Or continue with'),
            AppSpacing.verticalSpace(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ThirdPartAuthContainer(
                  authIcon: Icon(Icons.person, size: AppSpacing.iconSizeMd),
                  authText: 'Google',
                  onTap: () {},
                ),
                AppSpacing.horizontalSpace(16),
                ThirdPartAuthContainer(
                  authIcon: Icon(Icons.person, size: AppSpacing.iconSizeMd),
                  authText: 'Apple',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
