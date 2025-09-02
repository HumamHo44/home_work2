// Create a function that takes two integers as parameters and prints which one is larger.
void main() {
  compareNumbers(10, 20);
  compareNumbers(50, 30);
}

void compareNumbers(int a, int b) {
  if (a > b) {
    print('$a is larger than $b');
  } else if (b > a) {
    print('$b is larger than $a');
  }
}
