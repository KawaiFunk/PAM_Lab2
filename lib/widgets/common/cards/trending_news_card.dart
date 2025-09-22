import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/date_formatter.dart';
import '../buttons/category_chip.dart';

class TrendingNewsCard extends StatelessWidget {
  final String title;
  final String category;
  final String publisherName;
  final DateTime publishedAt;
  final String imagePath;
  final String publisherLogoPath;

  const TrendingNewsCard({
    super.key,
    required this.title,
    required this.category,
    required this.publisherName,
    required this.publishedAt,
    required this.imagePath,
    required this.publisherLogoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.OFF_WHITE,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imagePath,
                  height: 161,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: CategoryChip(label: category, filled: true),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.BLACK,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        publisherLogoPath,
                        height: 24,
                        width: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      publisherName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.grey,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.verified, color: Colors.blue, size: 16),
                  ],
                ),
                Text(
                  DateFormatter.format(publishedAt),
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
