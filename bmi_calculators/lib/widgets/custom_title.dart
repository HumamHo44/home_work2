import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.titel});
  final String titel;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF8D8E9D),
      ),
    );
  }
}
