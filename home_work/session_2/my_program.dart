//- Create a new Dart file. At the top, write a multi-line comment explaining your program. Inside the
//- file, write simple code with proper indentation and single line comments.
// .___________________________________________________________________.
//                        |Answer|

/*
 * Simple Calculator Program
 * This program takes two integers from user input
 * and calculates their sum
 */
import 'dart:io';

void main() {
  //Message to the user
  print('Welcome to my simple program for adding numbers');

  //Get first number from user
  print('Enter the first number');

  int number1 = int.parse(stdin.readLineSync()!);

  //Get second number from user
  print('Enter the second number');
  int number2 = int.parse(stdin.readLineSync()!);

  //Calculate sum
  int sum = number1 + number2;

  //Display result
  print('Sum of the two numbers: $sum');
}
