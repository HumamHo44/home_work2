import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/form_navigation_buttons.dart';
import 'package:quizz_app/widgets/satisf_action_question_card.dart';
import '../models/question_model.dart';

class QuestionStepOne extends StatefulWidget {
  const QuestionStepOne({super.key});
  static const routeName = 'questionone';

  @override
  State<QuestionStepOne> createState() => _QuestionStepOneState();
}

class _QuestionStepOneState extends State<QuestionStepOne>
    with AutomaticKeepAliveClientMixin {
  final PageController pageController = PageController();
  int currentQuestionIndex = 0;
  int? selectedOptionIndex;

  void goToNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToPreviousQuestion() {
    if (currentQuestionIndex > 0) {
      pageController.animateToPage(
        currentQuestionIndex - 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: questions.length,
                onPageChanged: (index) {
                  setState(() {
                    currentQuestionIndex = index;
                    selectedOptionIndex = null;
                  });
                },
                itemBuilder: (context, index) {
                  final question = questions[index];

                  return SatisfActionQuestionCard(
                    question: question,
                    selectedOptionIndex: selectedOptionIndex,
                    onOptionSelected: (index) {
                      setState(() {
                        selectedOptionIndex =
                            (selectedOptionIndex == index) ? null : index;
                      });
                    },
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FormNavigationButtons(
                selectedIndex: selectedOptionIndex,
                onBackPressed: goToPreviousQuestion,
                onNextPressed: goToNextQuestion,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
