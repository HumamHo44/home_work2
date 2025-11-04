import 'package:flutter/material.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/core/styles/app_text_styles.dart';
import 'package:quizz_app/models/question_model.dart';
import 'package:quizz_app/widgets/options_list.dart';
import 'package:quizz_app/widgets/question_header.dart';

class SatisfActionQuestionCard extends StatelessWidget {
  const SatisfActionQuestionCard({
    super.key,
    required this.question,
    required this.selectedOptionIndex,
    required this.onOptionSelected,
  });
  final QuestionModel question;
  final int? selectedOptionIndex;
  final Function(int) onOptionSelected;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(child: Image.asset(Assets.imagesGRADINET)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuestionHeader(
                numberQuestion: question.number,
                image: question.image,
              ),
              const SizedBox(height: 16),
              Text(
                question.questionText,
                style: AppTextStyles.medium24(color: Colors.white),
              ),
              const SizedBox(height: 32),
              OptionsList(
                options: question.options,
                selectedOptionIndex: selectedOptionIndex,
                onOptionSelected: onOptionSelected,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
