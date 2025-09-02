// Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers.
void main() {
  List<int> number = [5, 10, 15, 20, 25];

  int sum = 0;
  for (var item in number) {
    sum += item;
  }

  double average = sum / number.length;
  print('average is $average');
}
