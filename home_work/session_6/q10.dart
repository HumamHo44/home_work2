// Create a function that takes an integer n and returns the sum of all numbers from 1 to n. Print the
// returned value.
void main() {
  int result = sumUpTo(5);
  print('sum is $result');
}

int sumUpTo(int n) {
  return n * (n + 1) ~/ 2;
}
