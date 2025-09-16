/*
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
*/

import 'dart:io';

void main() {
  stdout.write("enter a list of integers separated by space: ");
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int maxNum = numbers[0];
  int minNum = numbers[0];
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;

  for (var num in numbers) {
    if (num > maxNum) maxNum = num;
    if (num < minNum) minNum = num;
    sum += num;
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  double average = sum / numbers.length;

  List<int> aboveAverage = [];
  for (var num in numbers) {
    if (num > average) aboveAverage.add(num);
  }

  print("maxNum: $maxNum");
  print("minNum: $minNum");
  print("difference: ${maxNum - minNum}");
  print("average: $average");
  print("aboveAverage: $aboveAverage");
  print("evenCount: $evenCount");
  print("oddCount: $oddCount");
}
