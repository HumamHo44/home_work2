// Q7. Sentence Word Counter - Ask the user for a short sentence.
//- Print how many words it contains
// and how many characters (excluding spaces).
import 'dart:io';

void main() {
  stdout.write("enter a short sentence: ");
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.split(' ');
  int wordCount = words.length;

  int charCount = sentence.replaceAll(' ', '').length;

  print("number of words: $wordCount");
  print("number of characters:  $charCount");
}
