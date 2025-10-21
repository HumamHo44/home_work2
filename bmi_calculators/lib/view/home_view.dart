import 'package:bmi_calculators/view/result_view.dart';
import 'package:bmi_calculators/widgets/age_and_width_session.dart';
import 'package:bmi_calculators/widgets/button_calculate.dart';
import 'package:bmi_calculators/widgets/custom_height_view.dart';
import 'package:bmi_calculators/widgets/gender_session.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String selectedGender = '';
  double height = 50;
  int weight = 60;
  int age = 25;

  void onGenderSelected(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  void onHeightChanged(double value) {
    setState(() {
      height = value;
    });
  }

  void onWeightIncrement() => setState(() => weight++);
  void onWeightDecrement() {
    if (weight > 1) setState(() => weight--);
  }

  void onAgeIncrement() => setState(() => age++);
  void onAgeDecrement() {
    if (age > 1) setState(() => age--);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSession(
          selectedGender: selectedGender,
          onGenderSelected: onGenderSelected,
        ),
        SizedBox(height: 40),
        CustomHeightView(height: height, onChanged: onHeightChanged),
        SizedBox(height: 50),
        AgeAndWidthSession(
          weight: weight,
          age: age,
          onWeightIncrement: onWeightIncrement,
          onWeightDecrement: onWeightDecrement,
          onAgeIncrement: onAgeIncrement,
          onAgeDecrement: onAgeDecrement,
        ),
        SizedBox(height: 190),
        ButtonCalculate(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ResultView(height: height, weight: weight),
              ),
            );
          },
        ),
      ],
    );
  }
}
