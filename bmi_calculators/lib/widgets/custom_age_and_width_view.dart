import 'package:bmi_calculators/widgets/custom_decrement_button.dart';
import 'package:bmi_calculators/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class CustomAgeAndWidthView extends StatelessWidget {
  const CustomAgeAndWidthView({
    super.key,
    required this.title,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });
  final String title;
  final String value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFF171730),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              CustomTitle(titel: title),
              Text(
                value,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomDecrementButton(onDecrement: onDecrement),
                  SizedBox(width: 20),
                  CustomDecrementButton(onDecrement: onIncrement),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
