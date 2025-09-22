import 'package:flutter/cupertino.dart';
import 'package:lab2/core/constants/app_colors.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final bool filled;

  const CategoryChip({super.key, required this.label, required this.filled});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: filled ? AppColors.CATEGORY_COLOR : AppColors.WHITE,
        borderRadius: BorderRadius.circular(5),
        border:
            filled
                ? null
                : Border.all(color: AppColors.CATEGORY_COLOR, width: 1),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: filled ? AppColors.WHITE : AppColors.CATEGORY_COLOR,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
