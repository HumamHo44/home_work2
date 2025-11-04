import 'package:flutter/painting.dart';

abstract class AppTextStyles {
  static TextStyle medium24({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilory',
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }

  static TextStyle medium18({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilory',
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }

  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilory',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static TextStyle regular12({Color? color}) {
    return TextStyle(
      fontFamily: 'Gilory',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }
}
