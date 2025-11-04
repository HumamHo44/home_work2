import 'package:flutter/material.dart';
import 'package:quizz_app/core/routes/on_generate_routes.dart';
import 'package:quizz_app/core/styles/app_colors.dart';
import 'package:quizz_app/views/home_view.dart';

void main() {
  runApp(const QuizzApp());
}

class QuizzApp extends StatelessWidget {
  const QuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Gilroy',
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: HomeView.routeName,

      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
