import 'package:flutter/material.dart';
import 'package:quizz_app/core/styles/app_colors.dart';
import 'package:quizz_app/core/styles/app_text_styles.dart';

class OptionText extends StatelessWidget {
  const OptionText({
    super.key,
    required this.optionText,
    required this.isSelected,
  });

  final String optionText;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Text(
      optionText,
      style: AppTextStyles.medium18(
        color: isSelected ? AppColors.primaryColor : Colors.black,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
