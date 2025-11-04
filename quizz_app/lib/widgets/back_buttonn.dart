import 'package:flutter/material.dart';
import 'package:quizz_app/core/styles/app_text_styles.dart';

class BackButtonn extends StatelessWidget {
  const BackButtonn({super.key, required this.onBackPressed});

  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onBackPressed,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 1, color: Color(0xFF8D83FF)),
        minimumSize: Size(MediaQuery.sizeOf(context).width / 3.5, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
          const SizedBox(width: 20),

          Text('Back', style: AppTextStyles.medium18(color: Colors.white)),
        ],
      ),
    );
  }
}
