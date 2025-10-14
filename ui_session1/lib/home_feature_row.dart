import 'package:flutter/material.dart';

class HomeFeatureRow extends StatelessWidget {
  const HomeFeatureRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 100, width: 100, color: Color(0xFFE1BEE8)),
        SizedBox(width: 10),
        Column(
          children: [
            Container(height: 45, width: 100, color: Color(0xFFCF94D9)),
            Container(height: 10, width: 100, color: Color(0xFFE1BEE8)),
            Container(height: 45, width: 100, color: Color(0xFFCF94D9)),
          ],
        ),
        SizedBox(width: 10),
        Container(height: 100, width: 98, color: Color(0xFFE1BEE8)),
        Container(height: 100, width: 98, color: Color(0xFFF4E4F5)),
      ],
    );
  }
}
