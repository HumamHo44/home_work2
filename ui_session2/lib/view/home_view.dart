import 'package:flutter/material.dart';
import 'package:ui_session2/view/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF9F4FF), body: HomeViewBody());
  }
}
