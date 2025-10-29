import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onChanged,
    required this.iconData,
  });

  final VoidCallback onChanged;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF8D8E9D),
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        onPressed: onChanged,
        icon: Icon(iconData, size: 40, color: Colors.white),
      ),
    );
  }
}
