// Exercise 6:
void main() {
  //  a) Create List animals with three values.

  List animals = ['Horse', 'Cheetah', 'Lion'];

  // b) Add a new animal, remove the last one, and update the second element.
  animals.add('monkey');
  print(animals);

  animals.removeAt(2);
  print(animals);
  animals[1] = 'cat';
  print(animals);

  // c) Print animals.first, animals.last, and animals.length.

  print(animals.first);
  print(animals.last);
  print(animals.length);
}
