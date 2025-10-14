import 'package:flutter/material.dart';

class HomeContentBlock extends StatelessWidget {
  const HomeContentBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(height: 50, width: 200, color: Color(0xFFA5D6A7)),
            SizedBox(height: 10),
            Container(height: 50, width: 200, color: Color(0xFFA5D6A7)),
          ],
        ),
        SizedBox(width: 20),
        Container(height: 110, width: 93, color: Color(0xFFFFCC7F)),
        SizedBox(width: 10),
        Container(height: 110, width: 93, color: Color(0xFFFFCC7F)),
      ],
    );
  }
}
