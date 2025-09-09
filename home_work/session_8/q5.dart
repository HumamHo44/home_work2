// Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
// number and the second largest number (without sorting the list).

import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 1; i <= 6; i++) {
    stdout.write("Enter number $i: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int num in numbers) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num > secondLargest && num != largest) {
      secondLargest = num;
    }
  }

  print("Largest number: $largest");
  print("Second largest number: $secondLargest");
}
