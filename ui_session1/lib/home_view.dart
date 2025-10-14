import 'package:flutter/material.dart';
import 'package:ui_session1/home_content_block.dart';
import 'package:ui_session1/home_feature_row.dart';
import 'package:ui_session1/home_summary_section.dart';
import 'package:ui_session1/top_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              TopSection(),
              SizedBox(height: 10),
              HomeContentBlock(),
              SizedBox(height: 15),
              HomeFeatureRow(),
              SizedBox(height: 15),
              HomeSummarySection(),
            ],
          ),
        ),
      ),
    );
  }
}
