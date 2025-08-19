// Exercise 7:

void main() {
  // a) Start with List numbers = [4, 4, 5, 6, 6, 7].
  List numbers = [4, 4, 5, 6, 6, 7];

  // b) Convert it to a Set to remove duplicates and print it.

  Set numbers2 = numbers.toSet();
  print(numbers2);

  // c) Use add(), remove(), and contains() with the set, printing each result.

  numbers2.add(2);
  print(numbers2);
  numbers2.remove(4);
  print(numbers2);
  print(numbers2.contains(5));
}
