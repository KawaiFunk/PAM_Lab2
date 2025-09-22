import 'package:flutter/material.dart';
import 'package:lab2/core/constants/app_colors.dart';
import 'package:lab2/core/utils/date_formatter.dart';
import 'package:lab2/screens/profile/profile_screen.dart';
import 'package:lab2/widgets/common/buttons/category_chip.dart';

class RecommendationCard extends StatelessWidget {
  final String title;
  final String category;
  final String publisherName;
  final DateTime publishedAt;
  final String imagePath;
  final String publisherLogoPath;
  final bool isProfileScreen;

  const RecommendationCard({
    super.key,
    required this.title,
    required this.category,
    required this.publisherName,
    required this.publishedAt,
    required this.imagePath,
    required this.publisherLogoPath,
    this.isProfileScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6, top: 6),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          publisherLogoPath,
                          height: 36,
                          width: 36,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            publisherName,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontFamily: 'Source Sans Pro',
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.verified, color: Colors.blue, size: 18),
                        ],
                      ),
                      Text(
                        DateFormatter.format(publishedAt),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  if (!isProfileScreen)
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        minimumSize: Size(91, 37),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.WHITE,
                          fontFamily: 'Source Sans Pro',
                        ),
                      ),
                    ),
                  SizedBox(width: 8),
                  Icon(Icons.more_vert_outlined, color: Colors.grey, size: 30),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.BLACK,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: CategoryChip(label: category, filled: false),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
