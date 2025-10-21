import 'package:bmi_calculators/widgets/custom_gender_widgets.dart';
import 'package:flutter/material.dart';

class GenderSession extends StatelessWidget {
  const GenderSession({
    super.key,
    required this.selectedGender,
    required this.onGenderSelected,
  });

  final String selectedGender;
  final Function(String gender) onGenderSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomGenderWidgets(
          title: 'MALE',
          icon: Icons.male,
          color: selectedGender == 'male' ? Colors.blue : Colors.white,
          isSelected: selectedGender == 'male',
          onTap: () => onGenderSelected('male'),
        ),
        CustomGenderWidgets(
          title: 'FEMALE',
          icon: Icons.female,
          color: selectedGender == 'female' ? Colors.pink : Colors.white,
          isSelected: selectedGender == 'female',
          onTap: () => onGenderSelected('female'),
        ),
      ],
    );
  }
}
