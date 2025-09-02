// Create a program that prints all numbers from 1 to 20, but only those divisible by 4.

void main() {
  for (var i = 1; i < 20; i++) {
    if (i % 4 == 0) {
      print('number $i');
    }
  }
}
