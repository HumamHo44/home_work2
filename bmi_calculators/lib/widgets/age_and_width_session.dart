import 'package:bmi_calculators/widgets/custom_age_and_width_view.dart';
import 'package:flutter/material.dart';

class AgeAndWidthSession extends StatelessWidget {
  const AgeAndWidthSession({
    super.key,
    required this.weight,
    required this.age,
    required this.onWeightIncrement,
    required this.onWeightDecrement,
    required this.onAgeIncrement,
    required this.onAgeDecrement,
  });

  final int weight;
  final int age;
  final VoidCallback onWeightIncrement;
  final VoidCallback onWeightDecrement;
  final VoidCallback onAgeIncrement;
  final VoidCallback onAgeDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomAgeAndWidthView(
            title: 'WEIGHT',
            value: weight.toString(),
            onIncrement: onWeightIncrement,
            onDecrement: onWeightDecrement,
          ),
        ),
        Expanded(
          child: CustomAgeAndWidthView(
            title: 'AGE',
            value: age.toString(),
            onIncrement: onAgeIncrement,
            onDecrement: onAgeDecrement,
          ),
        ),
      ],
    );
  }
}
