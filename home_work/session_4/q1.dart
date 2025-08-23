// Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
// count with the original list length and print a message if duplicates were removed.
void main() {
  List<int> numList = [1, 2, 3, 2, 4, 1, 5, 3, 6, 4];

  Set<int> uniqueSet = numList.toSet();

  if (numList.length > uniqueSet.length) {
    int removed = numList.length - uniqueSet.length;
    print('Duplicate items: $removed');
  } else {
    print('No duplication');
  }
}
