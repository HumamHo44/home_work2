// Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20.
// - Let the user
// guess up to 3 times. If they fail, reveal the correct number.
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int number = random.nextInt(20) + 1;
  for (int tries = 1; tries <= 3; tries++) {
    stdout.write("guess the number: ");
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == number) {
      print('you guessed the number ');
      break;
    } else {
      print('good luck if you didnt guess the number');
    }

    if (tries == 3) {
      print('your attempts have ended, the number is:$number');
    }
  }
}
