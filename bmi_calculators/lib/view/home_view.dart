import 'package:bmi_calculators/models/bmi_input_model.dart';
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

BmiInputModel bmiInputModel = BmiInputModel();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSession(bmiInputModel: bmiInputModel),
        SizedBox(height: 40),
        CustomHeightView(bmiInputModel: bmiInputModel),
        SizedBox(height: 50),
        AgeAndWidthSession(bmiInputModel: bmiInputModel),
        SizedBox(height: 190),
        ButtonCalculate(
          onPressed: () {
            print(bmiInputModel.toString());
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultView(bmiInputModel: bmiInputModel),
              ),
            );
          },
        ),
      ],
    );
  }
}
