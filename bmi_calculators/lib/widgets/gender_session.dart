import 'package:bmi_calculators/models/bmi_input_model.dart';
import 'package:bmi_calculators/widgets/custom_gender_widgets.dart';
import 'package:flutter/material.dart';

class GenderSession extends StatefulWidget {
  const GenderSession({super.key, required this.bmiInputModel});
  final BmiInputModel bmiInputModel;

  @override
  State<GenderSession> createState() => _GenderSessionState();
}

class _GenderSessionState extends State<GenderSession> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: CustomGenderWidgets(
              title: 'MALE',
              icon: Icons.male,
              color: selectedGender == 'Male' ? Colors.blue : Colors.white,
              isSelected: selectedGender == 'Male',
              onTap: () {
                selectedGender = 'Male';
                widget.bmiInputModel.gender = 'Mele';
                setState(() {});
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: CustomGenderWidgets(
              title: 'FEMALE',
              icon: Icons.female,
              color: selectedGender == 'Female' ? Colors.pink : Colors.white,
              isSelected: selectedGender == 'Female',
              onTap: () {
                selectedGender = 'Female';
                widget.bmiInputModel.gender = 'Female';

                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
