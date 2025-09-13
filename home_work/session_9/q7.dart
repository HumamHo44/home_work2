// Q7 Ask the user for a number (e.g., 9875).
//Keep summing its digits until the result is a single digit.
// Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  while (num >= 10) {
    String numStr = num.toString();
    int sum = 0;

    for (int i = 0; i < numStr.length; i++) {
      sum += int.parse(numStr[i]);
    }

    num = sum;
  }

  print("single-digit result: $num");
}
