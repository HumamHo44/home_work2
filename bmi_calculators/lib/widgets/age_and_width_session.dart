import 'package:bmi_calculators/models/bmi_input_model.dart';
import 'package:bmi_calculators/widgets/custom_age_and_width_view.dart';
import 'package:flutter/material.dart';

class AgeAndWidthSession extends StatefulWidget {
  const AgeAndWidthSession({super.key, required this.bmiInputModel});
  final BmiInputModel bmiInputModel;

  @override
  State<AgeAndWidthSession> createState() => _AgeAndWidthSessionState();
}

class _AgeAndWidthSessionState extends State<AgeAndWidthSession> {
  void incrementWeight() {
    setState(() => widget.bmiInputModel.weight++);
  }

  void decrementWeight() {
    if (widget.bmiInputModel.weight > 1) {
      setState(() => widget.bmiInputModel.weight--);
    }
  }

  void incrementAge() {
    setState(() => widget.bmiInputModel.age++);
  }

  void decrementAge() {
    if (widget.bmiInputModel.age > 1) {
      setState(() => widget.bmiInputModel.age--);
    }
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.bmiInputModel;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomAgeAndWidthView(
              title: 'WEIGHT',
              value: model.weight.toString(),
              onIncrement: incrementWeight,
              onDecrement: decrementWeight,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: CustomAgeAndWidthView(
              title: 'AGE',
              value: model.age.toString(),
              onIncrement: incrementAge,
              onDecrement: decrementAge,
            ),
          ),
        ],
      ),
    );
  }
}
