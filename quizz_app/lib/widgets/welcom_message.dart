import 'package:flutter/material.dart';
import 'package:quizz_app/core/styles/app_text_styles.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good morning,',
          style: AppTextStyles.regular16(color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          'New topic is waiting,',
          style: AppTextStyles.medium24(color: Colors.white),
        ),
      ],
    );
  }
}
