import 'package:bmi_calculators/models/bmi_input_model.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.bmiInputModel});

  final BmiInputModel bmiInputModel;

  double get bmi {
    final heightInMeters = bmiInputModel.height / 100;
    return bmiInputModel.weight / (heightInMeters * heightInMeters);
  }

  String get bmiCategory {
    final value = bmi;
    if (value < 18.5) return "ضعيف";
    if (value < 25) return "مثالي";
    if (value < 30) return "زيادة وزن";
    return "سمنة";
  }

  String get bmiAdvice {
    switch (bmiCategory) {
      case "ضعيف":
        return "حاول زيادة وزنك بطريقة صحية بتناول وجبات متوازنة.";
      case "مثالي":
        return "حافظ على وزنك الحالي ومارس الرياضة بانتظام.";
      case "زيادة وزن":
        return "قلل من السكريات والدهون وزد من النشاط البدني.";
      case "سمنة":
        return "استشر مختص تغذية وحاول تخفيف الوزن تدريجيًا.";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090B25), // نفس لون التطبيق
      appBar: AppBar(
        backgroundColor: const Color(0xFF171730),
        title: const Text(
          'نتيجة BMI',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'نتيجتك',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF171730),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      bmiCategory,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: bmiCategory == "مثالي"
                            ? Colors.green
                            : (bmiCategory == "ضعيف"
                                  ? Colors.orange
                                  : Colors.red),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      bmiAdvice,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEC0D54),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'العودة',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
