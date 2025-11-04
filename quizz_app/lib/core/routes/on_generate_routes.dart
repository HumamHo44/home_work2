import 'package:flutter/material.dart';
import 'package:quizz_app/views/home_view.dart';
import 'package:quizz_app/views/question_step_one.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeView.routeName:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case QuestionStepOne.routeName:
        return MaterialPageRoute(builder: (_) => const QuestionStepOne());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
