import 'package:flutter/material.dart';

class CustomDecrementButton extends StatelessWidget {
  const CustomDecrementButton({super.key, required this.onDecrement});

  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF8D8E9D),
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        onPressed: onDecrement,
        icon: Icon(Icons.remove, size: 40, color: Colors.white),
      ),
    );
  }
}
