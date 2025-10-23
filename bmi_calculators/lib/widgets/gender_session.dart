import 'package:bmi_calculators/widgets/custom_gender_widgets.dart';
import 'package:flutter/material.dart';

class GenderSession extends StatefulWidget {
  const GenderSession({super.key, required this.onGenderChanged});
  final Function(String) onGenderChanged;

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
              color: selectedGender == 'male' ? Colors.blue : Colors.white,
              isSelected: selectedGender == 'male',
              onTap: () {
                selectedGender = 'male';
                setState(() {});
                widget.onGenderChanged(selectedGender);
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: CustomGenderWidgets(
              title: 'FEMALE',
              icon: Icons.female,
              color: selectedGender == 'female' ? Colors.pink : Colors.white,
              isSelected: selectedGender == 'female',
              onTap: () {
                selectedGender = 'female';
                setState(() {});
                widget.onGenderChanged(selectedGender);
              },
            ),
          ),
        ],
      ),
    );
  }
}
