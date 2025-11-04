import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/back_buttonn.dart';
import 'package:quizz_app/widgets/next_button.dart';

class FormNavigationButtons extends StatelessWidget {
  final int? selectedIndex;
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;

  const FormNavigationButtons({
    super.key,
    required this.selectedIndex,
    required this.onBackPressed,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackButtonn(onBackPressed: onBackPressed),
          NextButton(
            selectedIndex: selectedIndex,
            onNextPressed: onNextPressed,
          ),
        ],
      ),
    );
  }
}
