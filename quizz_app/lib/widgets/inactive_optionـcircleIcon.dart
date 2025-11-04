import 'package:flutter/material.dart';

class InactiveOptionCircleIcon extends StatelessWidget {
  const InactiveOptionCircleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(color: Colors.grey),
      ),
    );
  }
}
