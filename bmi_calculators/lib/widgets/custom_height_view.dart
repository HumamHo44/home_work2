import 'package:bmi_calculators/models/bmi_input_model.dart';
import 'package:bmi_calculators/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class CustomHeightView extends StatefulWidget {
  const CustomHeightView({super.key, required this.bmiInputModel});
  final BmiInputModel bmiInputModel;

  @override
  State<CustomHeightView> createState() => _CustomHeightViewState();
}

class _CustomHeightViewState extends State<CustomHeightView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFF171730),
        ),
        child: Column(
          children: [
            CustomTitle(titel: 'HEIGHT'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.bmiInputModel.height.toStringAsFixed(0),
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Text(
                    'cm',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8D8E9D),
                    ),
                  ),
                ),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 1,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              ),
              child: Slider(
                min: 50,
                max: 220,
                divisions: 170,
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
                thumbColor: Colors.red,
                value: widget.bmiInputModel.height,
                onChanged: (value) {
                  widget.bmiInputModel.height = value;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
