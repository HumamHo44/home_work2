// Q2. Odd Numbers in a Range - Ask the user to input a number n.
// - Print all odd numbers between 1
// and n, and also print how many odd numbers were found.
import 'dart:io';

void main() {
  int count = 0;
  stdout.write("enter number: ");

  int num = int.parse(stdin.readLineSync()!);

  for (var i = 1; i < num; i++) {
    if (i % 2 == 1) {
      print(" odd numbers: $i");
      count++;
    }
  }
  print("count: $count");
}
