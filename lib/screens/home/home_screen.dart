import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/trending_news_list.dart';
import '../../widgets/common/app_bar/custom_app_bar.dart';
import '../../widgets/common/cards/recommenation_card.dart';
import '../../widgets/common/cards/trending_news_card.dart';
import '../../widgets/home/welcome_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColors.WHITE,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            WelcomeHeader(
              mainText: 'Welcome back, Tyler!',
              subText: 'Discover a world of news that matters to you',
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: Text(
                    'Trending News',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.BLACK,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 317,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10),
                itemCount: TrendingNewsList.NEWS_LIST.length,
                itemBuilder: (context, index) {
                  final news = TrendingNewsList.NEWS_LIST[index];
                  return TrendingNewsCard(
                    title: news.title,
                    category: news.category,
                    publisherName: news.publisherName,
                    publishedAt: news.publishedAt,
                    imagePath: news.imagePath,
                    publisherLogoPath: news.publisherLogoPath,
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Recommendation',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.BLACK,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: RecommendationCard(
                title: 'Tech Startup Secures 50 Million Funding for Expansion',
                category: 'Business',
                publisherName: 'Forbes',
                publishedAt: DateTime(2023, 6, 11),
                imagePath: 'lib/assets/images/Recommend.jpg',
                publisherLogoPath: 'lib/assets/images/Forbes.png',
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
