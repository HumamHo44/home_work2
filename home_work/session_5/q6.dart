// Create a program that calculates the factorial of 6 and prints the result.
void main() {
  int number = 6;
  int factoria = 1;
  for (var i = 1; i < number; i++) {
    factoria *= i;
  }
  print('factoria $number is $factoria');
}
