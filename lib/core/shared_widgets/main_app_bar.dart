import 'package:flutter/material.dart';
import 'package:service_hub/core/helpers/screen_utils.dart';
import 'package:service_hub/core/theming/app_colors.dart';
import 'package:service_hub/core/theming/app_text_styles.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onProfileTap;
  final VoidCallback? onAppLogoTap;
  final VoidCallback? onNotificationTap;

  const MainAppBar({
    super.key,
    this.onProfileTap,
    this.onNotificationTap,
    this.onAppLogoTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: AppScreen.w(64), // Adjusted to provide adequate padding
      leading: GestureDetector(
        onTap: onProfileTap,
        child: Center(
          child: SizedBox(
            height: AppScreen.h(32),
            width: AppScreen.w(32),
            child: const CircleAvatar(
              backgroundColor: AppColors.transparent,
              child: Icon(Icons.person), // Placeholder for Profile Icon
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: GestureDetector(
        onTap: onAppLogoTap,
        child: Text(
          // Placeholder for App Logo
          'Service Hub',
          style: AppTextStyles.subtitle,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: onNotificationTap,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(end: 16.0),
            child: Center(
              child: SizedBox(
                height: AppScreen.h(40),
                width: AppScreen.w(40),
                child: const Icon(
                  Icons.notifications,
                ), // Placeholder for Notification Icon
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
