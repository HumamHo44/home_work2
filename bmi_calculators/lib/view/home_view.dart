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

double height = 0;

int weight = 0;

int age = 0;

String gender = '';

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSession(
          onGenderChanged: (value) {
            gender = value;
          },
        ),
        SizedBox(height: 40),
        CustomHeightView(
          onHeightChanged: (value) {
            height = value;
          },
        ),
        SizedBox(height: 50),
        AgeAndWidthSession(
          onAgeChanged: (value) {
            age = value;
          },
          onWeightChanged: (value) {
            weight = value;
          },
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
