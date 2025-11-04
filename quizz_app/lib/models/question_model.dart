import 'package:quizz_app/constants/assets.dart';

class QuestionModel {
  final String questionText;
  final List<String> options;
  final String image;
  final String number;

  QuestionModel({
    required this.questionText,
    required this.options,
    required this.image,
    required this.number,
  });
}

List<QuestionModel> questions = [
  QuestionModel(
    questionText:
        'How would you describe your level of satisfaction with the healthcare system?',
    options: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    number: '1',
    image: Assets.imagesQ1,
  ),
  QuestionModel(
    questionText: 'What vitamins do you take?',
    options: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Mogneisum'],
    number: '2',
    image: Assets.imagesQ2,
  ),
  QuestionModel(
    questionText:
        'How often do you engage in physical activity during the week?',
    options: ['Daily', '3-4 times', '1-2 times', 'Rarely'],
    number: '3',
    image: Assets.imagesQ3,
  ),
  QuestionModel(
    questionText: 'How would you rate your current sleep quality?',
    options: ['Excellent', 'Good', 'Fair', 'Poor'],
    number: '4',
    image: Assets.imagesQ4,
  ),
];
