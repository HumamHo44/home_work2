import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/core/styles/app_colors.dart';
import 'package:quizz_app/core/styles/app_text_styles.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({
    super.key,
    required this.numberQuestion,
    required this.image,
  });
  final String numberQuestion;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: AppColors.secondaryColorTow,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: AppColors.secondaryColorTow),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              SvgPicture.asset(image, width: 20, height: 20),
              Text(
                'Question $numberQuestion',
                style: AppTextStyles.medium18(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
