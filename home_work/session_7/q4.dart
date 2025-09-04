// Q4. Simple List Analyzer - Let the user enter 5 numbers into a list.
// - Print the largest and smallest
// numbers, and then calculate the difference between them.
import 'dart:io';

void main() {
  int largest = 0;
  int smallest = 0;
  List<int> numbers = [];

  for (var i = 0; i < 5; i++) {
    stdout.write("enter number: ");

    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
    if (i == 0) {
      largest = num;
      smallest = num;
    } else {
      if (num > largest) {
        largest = num;
      }
      if (num < smallest) {
        smallest = num;
      }
    }
  }

  int difference = largest - smallest;

  print("largest: $largest");
  print("smallest: $smallest");
  print("difference: $difference");
}
