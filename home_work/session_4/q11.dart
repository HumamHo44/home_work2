// Write a Dart program that converts a list of names to a set of unique values. Create a map with
// counts of occurrences. Compare lengths and print a message if a specific name appears more than
// once.
void main() {
  List<String> names = ['ali', 'sara', 'ali', 'omar', 'sara'];
  Set<String> uniqueNames = names.toSet();

  int aliCount = names.where((name) => name == 'ali').length;
  int saraCount = names.where((name) => name == 'sara').length;
  int omarCount = names.where((name) => name == 'omar').length;

  if (names.length != uniqueNames.length) {
    print('There are repetitions.');
  }

  if (aliCount > 1) {
    print('appears more than once ali');
  }
  if (saraCount > 1) {
    print('appears more than once sara');
  }
  if (omarCount > 1) {
    print('appears more than once omar');
  }
}
