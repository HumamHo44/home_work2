// Q8. Digits Operations - Ask the user for a number (e.g., 528).
//- Print the sum of its digits and also
// print the largest digit.

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int numbers = int.parse(stdin.readLineSync()!);

  String numString = numbers.toString();
  int sum = 0;
  int largest = 0;
  for (var num in numString.split('')) {
    int number = int.parse(num);
    sum += number;
    if (number > largest) {
      largest = number;
    }
  }
  print('sum: $sum');
  print('largest: $largest');
}
