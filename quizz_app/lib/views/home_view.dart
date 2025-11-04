import 'package:flutter/material.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/views/question_step_one.dart';
import 'package:quizz_app/widgets/custom_elevated_button.dart';
import 'package:quizz_app/widgets/welcom_message.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(Assets.imagesGRADINET),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WelcomeMessage(),
                  const Spacer(),
                  CustomElevatedButton(
                    text: 'Start Quiz',
                    onPressed: () {
                      Navigator.pushNamed(context, QuestionStepOne.routeName);
                    },
                  ),
                  const SizedBox(height: 38.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
