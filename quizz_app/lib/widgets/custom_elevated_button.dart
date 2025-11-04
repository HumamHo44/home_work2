import 'package:flutter/material.dart';
import 'package:quizz_app/core/styles/app_text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;

  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,

    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: Size(MediaQuery.sizeOf(context).width, 50),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyles.medium18(color: const Color(0xFF2B0062)),
      ),
    );
  }
}
