// lib/widgets/custom_gender_widgets.dart
import 'package:flutter/material.dart';

class CustomGenderWidgets extends StatelessWidget {
  const CustomGenderWidgets({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected
            ? const Color(0xFF1D1E33)
            : const Color(0xFF090B25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(20),
        minimumSize: const Size(180, 150),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 100, color: isSelected ? color : Colors.white),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : const Color(0xFF8D8E9D),
            ),
          ),
        ],
      ),
    );
  }
}
