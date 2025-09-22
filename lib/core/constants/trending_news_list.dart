class TrendingNewsList {
  static List<TrendingNews> NEWS_LIST = [
    TrendingNews(
      title: 'Global Summit on Climate Change: Historic Agreement Reached',
      category: 'Environment',
      publisherName: 'BBC News',
      publishedAt: DateTime(2023, 6, 9),
      imagePath: 'lib/assets/images/GlobalSummer.jpg',
      publisherLogoPath: 'lib/assets/images/BBC.png',
    ),
    TrendingNews(
      title: 'Tech Giant Unveils Revolutionary AI-powered Device',
      category: 'Technology',
      publisherName: 'TechCrunch',
      publishedAt: DateTime(2024, 6, 14, 9, 0),
      imagePath: 'lib/assets/images/TechGiant.jpg',
      publisherLogoPath: 'lib/assets/images/NYT.png',
    )
  ];
}

class TrendingNews {
  final String title;
  final String category;
  final String publisherName;
  final DateTime publishedAt;
  final String imagePath;
  final String publisherLogoPath;

  const TrendingNews({
    required this.title,
    required this.category,
    required this.publisherName,
    required this.publishedAt,
    required this.imagePath,
    required this.publisherLogoPath,
  });
}
