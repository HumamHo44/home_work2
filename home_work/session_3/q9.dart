// Exercise 9:
void main() {
  // a) Create List> students with two items, each having name and grade.

  List<Map<String, dynamic>> students = [
    {'name': 'humam', 'grade': 40},
    {'name': 'ali', 'grade': 30},
  ];

  // b) Print the grade of the second student using index and key.
  print(students[1]['grade']);

  // c) Add both grades and print the average grade as double.

  double average = (students[0]['grade'] + students[1]['grade']) / 2;

  print(average);
}
