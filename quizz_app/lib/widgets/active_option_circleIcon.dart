import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/constants/assets.dart';
import 'package:quizz_app/core/styles/app_colors.dart';

class ActiveOptionCircleIcon extends StatelessWidget {
  const ActiveOptionCircleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: Center(
        child: SvgPicture.asset(Assets.imagesCheckIcon, width: 15, height: 15),
      ),
    );
  }
}
