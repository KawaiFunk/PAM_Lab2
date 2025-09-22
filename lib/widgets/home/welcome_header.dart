import 'package:flutter/cupertino.dart';

import '../../core/constants/app_text_styles.dart';

class WelcomeHeader extends StatelessWidget {
  final String mainText;
  final String subText;

  const WelcomeHeader({
    super.key,
    required this.mainText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(mainText, style: AppTextStyles.HEADER_MAIN_TEXT),
          const SizedBox(height: 8),
          Text(subText, style: AppTextStyles.HEADER_SUB_TEXT),
        ],
      ),
    );
  }
}
