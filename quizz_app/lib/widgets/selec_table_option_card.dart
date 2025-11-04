import 'package:flutter/material.dart';
import 'package:quizz_app/core/styles/app_colors.dart';
import 'package:quizz_app/widgets/inactive_option%D9%80circleIcon.dart';
import 'package:quizz_app/widgets/active_option_circleIcon.dart';
import 'package:quizz_app/widgets/option_text.dart';

class SelecTableOptionCard extends StatelessWidget {
  const SelecTableOptionCard({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.optionText,
  });

  final String optionText;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: isSelected ? AppColors.primaryColor : Colors.grey,
          ),
        ),
        color: isSelected ? AppColors.secondaryColor : Colors.white,
        child: ListTile(
          leading:
              isSelected
                  ? const ActiveOptionCircleIcon()
                  : const InactiveOptionCircleIcon(),
          title: OptionText(optionText: optionText, isSelected: isSelected),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          visualDensity: VisualDensity.comfortable,
        ),
      ),
    );
  }
}
