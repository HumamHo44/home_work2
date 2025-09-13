//- Write a Dart program that declares two numeric variables and performs addition, subtraction,
//- multiplication, division, and modulo on them. Print each result.
// .___________________________________________________________________.
//                        |Answer|

void main() {
  int number1 = 10;
  int number2 = 5;
  dynamic sum = number1 + number2;
  print("Addition: $sum");

  sum = number1 - number2;
  print("Subtraction: $sum");
  sum = number1 * number2;
  print("Multiplication: $sum");
  sum = number1 / number2;
  print("Division: $sum");
  sum = number1 % number2;
  print("Remainder: $sum");
}
