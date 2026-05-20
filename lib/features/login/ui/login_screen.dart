import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_hub/core/helpers/app_spacing.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/shared_widgets/app_button.dart';
import 'package:service_hub/core/shared_widgets/app_divider.dart';
import 'package:service_hub/core/shared_widgets/app_text_field.dart';
import 'package:service_hub/core/shared_widgets/card_container.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';
import 'package:service_hub/features/login/ui/widgets/third_part_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppScreen.w(20)),
                child: CardContainer(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppScreen.w(16),
                    vertical: AppScreen.h(32),
                  ),
                  child: Column(
                    children: [
                      AppTextField(label: 'Email'),
                      AppSpacing.verticalSpace(24),
                      AppTextField(
                        label: 'Password',
                        rightLabel: Text(
                          'Forgot Password?',
                          style: AppTextStyles.font14WhiteSemiBold.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.normal,
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
                            authIcon: Icon(
                              Icons.person,
                              size: AppSpacing.iconSizeMd,
                            ),
                            authText: 'Google',
                          ),
                          AppSpacing.horizontalSpace(16),
                          ThirdPartAuthContainer(
                            authIcon: Icon(
                              Icons.person,
                              size: AppSpacing.iconSizeMd,
                            ),
                            authText: 'Apple',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacing.verticalSpace(32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: AppTextStyles.body.copyWith(fontSize: 16.sp),
                  ),
                  AppSpacing.horizontalSpace(4),
                  Text(
                    'Create Account',
                    style: AppTextStyles.font14WhiteSemiBold.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
