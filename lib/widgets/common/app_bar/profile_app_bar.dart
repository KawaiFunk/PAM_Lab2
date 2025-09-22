import 'package:flutter/material.dart';
import 'package:lab2/core/constants/app_colors.dart';
import 'package:lab2/widgets/common/buttons/custom_icon_button.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBack;
  final VoidCallback? onMore;

  const ProfileAppBar({super.key, this.onBack, this.onMore});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.WHITE,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(icon: Icons.arrow_back, onPressed: onBack),
          const Text(
            'forbesnews',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          CustomIconButton(icon: Icons.more_vert, onPressed: onMore),
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }
}
