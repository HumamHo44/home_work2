import 'package:flutter/material.dart';

class CustomHeightView extends StatelessWidget {
  const CustomHeightView({
    super.key,
    required this.height,
    required this.onChanged,
  });

  final double height;
  final ValueChanged<double> onChanged;

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
            Text(
              'HEIGHT',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8D8E9D),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  height.toStringAsFixed(0),
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
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
              ),
              child: Slider(
                min: 50,
                max: 220,
                divisions: 170,
                activeColor: Colors.white,
                thumbColor: Colors.red,
                value: height,
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
