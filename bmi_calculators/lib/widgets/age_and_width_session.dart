import 'package:bmi_calculators/widgets/custom_age_and_width_view.dart';
import 'package:flutter/material.dart';

class AgeAndWidthSession extends StatefulWidget {
  const AgeAndWidthSession({
    super.key,
    required this.onAgeChanged,
    required this.onWeightChanged,
  });
  final ValueChanged<int> onAgeChanged;
  final ValueChanged<int> onWeightChanged;

  @override
  State<AgeAndWidthSession> createState() => _AgeAndWidthSessionState();
}

class _AgeAndWidthSessionState extends State<AgeAndWidthSession> {
  int weight = 60;
  int age = 20;

  void incrementWeight() {
    setState(() => weight++);
    widget.onWeightChanged(weight);
  }

  void decrementWeight() {
    if (weight > 1) {
      setState(() => weight--);
      widget.onWeightChanged(weight);
    }
  }

  void incrementAge() {
    setState(() => age++);
    widget.onAgeChanged(age);
  }

  void decrementAge() {
    if (age > 1) {
      setState(() => age--);
      widget.onAgeChanged(age);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomAgeAndWidthView(
              title: 'WEIGHT',
              value: weight.toString(),
              onIncrement: incrementWeight,
              onDecrement: decrementWeight,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: CustomAgeAndWidthView(
              title: 'AGE',
              value: age.toString(),
              onIncrement: incrementAge,
              onDecrement: decrementAge,
            ),
          ),
        ],
      ),
    );
  }
}
