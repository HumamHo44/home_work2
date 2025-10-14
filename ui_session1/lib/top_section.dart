import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 200, width: 420, color: Color(0xFFE3F1FD)),
        SizedBox(height: 15),
        Row(
          children: [
            Container(height: 30, width: 30, color: Color(0xFFE0E0E0)),
            SizedBox(width: 10),
            Container(height: 25, width: 376, color: Color(0xFFE0E0E0)),
          ],
        ),
        SizedBox(height: 10),
        Divider(
          color: Colors.black.withOpacity(0.3),
          thickness: 1,
          endIndent: 2,
        ),
      ],
    );
  }
}
