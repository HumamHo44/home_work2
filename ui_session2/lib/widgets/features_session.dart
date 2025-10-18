import 'package:flutter/material.dart';
import 'package:ui_session2/widgets/custom_feature_tile.dart';

class FeaturesSession extends StatelessWidget {
  const FeaturesSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Features',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(height: 10),
        CustomFeatureTile(
          icon: Icons.speed,
          iconColor: Color(0xFF8160B9),
          title: 'Fast Performance',
          subtitle: 'Lightning fast app performance',
        ),
        CustomFeatureTile(
          icon: Icons.security,
          iconColor: Color(0xFF1888D7),
          title: 'Secure Data',
          subtitle: 'Your data is safe with us',
        ),
        CustomFeatureTile(
          icon: Icons.palette,
          iconColor: Color(0xFFFC9918),
          title: 'Beautiful UI',
          subtitle: 'Modern and clean design',
        ),
      ],
    );
  }
}
