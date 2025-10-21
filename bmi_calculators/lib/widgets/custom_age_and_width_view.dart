import 'package:flutter/material.dart';

class CustomAgeAndWidthView extends StatelessWidget {
  const CustomAgeAndWidthView({
    super.key,
    required this.title,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });
  final String title;
  final String value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 190,
          height: 180,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFF171730),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF8D8E9D),
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF8D8E9D),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: onDecrement,
                      icon: Icon(Icons.remove, size: 40, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 20),

                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF8D8E9D),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: onIncrement,
                      icon: Icon(Icons.add, size: 40, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
