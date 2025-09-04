// Q3. Word Reversal & Vowel Count -
// Take a word from the user. - Print the word reversed, and also
// count how many vowels it has.
import 'dart:io';

void main() {
  stdout.write("enter word: ");
  String word = stdin.readLineSync()!;
  int count = 0;
  String cleaned = word.toLowerCase();

  String reversed = word.split('').reversed.join('');

  for (var i = 0; i < cleaned.length; i++) {
    if ('aeiou'.contains(cleaned[i])) {
      count++;
    }
  }

  print('vowel count: $count');
  print('reversed word: $reversed');
}
