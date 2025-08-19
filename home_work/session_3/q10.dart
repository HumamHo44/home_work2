// Exercise 10:

void main() {
  // Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
  /*
-var: The type of a variable is determined automatically from the first value assigned to it.
  Its value can be changed later but of the same type.
 
dynamic: accepts any type of value and its type can be changed during operation.

*/

  // assign dynamic value first as an int, then as a String, printin

  dynamic number = 20;
  print(number);
  number = 'humam';
  print(number);

  // b) Create var greeting = 'Hi'; change it to another String and print.
  var greeting = 'Hi';
  greeting = 'Dart';
  print(greeting);

  // c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).
  num pi = 3.14159;

  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
