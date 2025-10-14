import 'package:flutter/material.dart';

class HomeSummarySection extends StatelessWidget {
  const HomeSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(height: 70, width: 201, color: Color(0xFFB2DEDB)),
            SizedBox(width: 15),
            Container(height: 70, width: 201, color: Color(0xFF80CBC4)),
          ],
        ),
        SizedBox(height: 15),
        Container(height: 50, width: 414, color: Color(0xFFE0E0E0)),
      ],
    );
  }
}
