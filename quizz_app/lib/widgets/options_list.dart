import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/selec_table_option_card.dart';

class OptionsList extends StatelessWidget {
  final List<String> options;
  final int? selectedOptionIndex;
  final Function(int index) onOptionSelected;

  const OptionsList({
    super.key,
    required this.options,
    required this.selectedOptionIndex,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(options.length, (index) {
        return SelecTableOptionCard(
          onTap: () => onOptionSelected(index),
          isSelected: selectedOptionIndex == index,
          optionText: options[index],
        );
      }),
    );
  }
}
