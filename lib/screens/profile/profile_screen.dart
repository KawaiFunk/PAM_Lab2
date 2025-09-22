import 'package:flutter/material.dart';
import 'package:lab2/widgets/common/app_bar/profile_app_bar.dart';
import 'package:lab2/widgets/common/cards/recommenation_card.dart';
import 'package:lab2/widgets/common/search/search_bar.dart';
import 'package:lab2/widgets/common/stats/stat_row_element.dart';

import '../../core/constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        onBack: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: AppColors.WHITE,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'lib/assets/images/Forbes.png',
                      width: 108,
                      height: 108,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            StatRowElement(count: '6.8k', label: 'News'),
                            StatRowElement(count: '2.5k', label: 'Followers'),
                            StatRowElement(count: '100', label: 'Following'),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.BLACK,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                ),
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(
                                    color: AppColors.WHITE,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Forbes',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.verified, color: Colors.blue, size: 24),
                ],
              ),

              Text(
                'Empowering your business journey with expert insights and influential perspectives.',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),

              const SizedBox(height: 20),

              const Text(
                'News by Forbes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Sort by:',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                      const SizedBox(width: 4),
                      DropdownButton<String>(
                        value: 'Newest',
                        underline: SizedBox(),
                        icon: Icon(Icons.keyboard_arrow_down),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        items:
                            ['Newest', 'Oldest', 'Popular']
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                        onChanged: (value) {},
                      ),
                    ],
                  ),

                  Row(
                    children: const [
                      Icon(
                        Icons.crop_square_rounded,
                        size: 24,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.list, size: 24),
                    ],
                  ),
                ],
              ),

              CustomSearchBar(),

              const SizedBox(height: 20),

              RecommendationCard(
                title: 'Tech Startup Secures 50 Million Funding for Expansion',
                category: 'Business',
                publisherName: 'Forbes',
                publishedAt: DateTime(2023, 6, 11),
                imagePath: 'lib/assets/images/Recommend.jpg',
                publisherLogoPath: 'lib/assets/images/Forbes.png',
                isProfileScreen: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
