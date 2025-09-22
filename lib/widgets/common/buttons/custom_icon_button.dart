import 'package:flutter/material.dart';
import 'package:lab2/core/constants/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final VoidCallback? onPressed;

  const CustomIconButton({
    super.key,
    required this.icon,
    this.size = 24.0,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        icon: Icon(icon, size: size, color: AppColors.BLACK),
        onPressed: onPressed ?? () {},
        splashRadius: 24,
      ),
    );
  }
}
