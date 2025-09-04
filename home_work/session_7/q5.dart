// Q5. Multiplication Table with Sum - Ask the user for a number.
// - Print its multiplication table up to
// 10, then calculate the sum of all results.

import 'dart:io';

void main() {
  stdout.write("enter number: ");

  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (var i = 1; i <= 10; i++) {
    int result = i * num;
    print("$i x $num = $result");
    sum += result;
  }
  print("sum: $sum");
}
