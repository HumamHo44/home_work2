import 'package:flutter/material.dart';
import 'package:quizz_app/core/styles/app_colors.dart';
import 'package:quizz_app/core/styles/app_text_styles.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.selectedIndex,
    required this.onNextPressed,
  });

  final int? selectedIndex;
  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: selectedIndex != null ? onNextPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryColorTow,
        minimumSize: Size(MediaQuery.sizeOf(context).width / 3.5, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Next', style: AppTextStyles.medium18(color: Colors.white)),
          const SizedBox(width: 20),
          const Icon(Icons.navigate_next, color: Colors.white, size: 30),
        ],
      ),
    );
  }
}
