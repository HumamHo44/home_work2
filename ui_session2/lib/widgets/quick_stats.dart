import 'package:flutter/material.dart';
import 'package:ui_session2/widgets/Custom_Card_Stats.dart';

class QuickStats extends StatelessWidget {
  const QuickStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Quick Stats',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomCardStats(
              icon: Icons.group,
              iconColor: Color(0xFF5826B6),
              value: '1,234',
              label: 'Users',
            ),
            CustomCardStats(
              icon: Icons.star,
              iconColor: Color(0xFFFC9918),
              value: '4.8',
              label: 'Rating',
            ),
            CustomCardStats(
              icon: Icons.trending_up,
              iconColor: Color(0xFF1888D7),
              value: '98%',
              label: 'Success',
            ),
          ],
        ),
      ],
    );
  }
}
