import 'package:flutter/material.dart';
import 'package:lab2/core/constants/app_colors.dart';
import 'package:lab2/widgets/common/buttons/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.WHITE,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomIconButton(icon: Icons.menu),
          CustomIconButton(icon: Icons.notifications_none),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }
}
