import 'package:flutter/material.dart';
import 'package:ui_session2/widgets/action_buttons_row.dart';
import 'package:ui_session2/widgets/features_session.dart';
import 'package:ui_session2/widgets/get_started_card.dart';
import 'package:ui_session2/widgets/quick_stats.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetStartedCard(),
          SizedBox(height: 30),
          QuickStats(),
          SizedBox(height: 30),
          FeaturesSession(),
          Spacer(),
          ActionButtonsRow(),
        ],
      ),
    );
  }
}
