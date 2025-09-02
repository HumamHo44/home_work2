// Create a program with a map of student names to their marks. Print the name of the student with
// the highest mark.

void main() {
  Map<String, int> students = {'ali': 85, 'mona': 92, 'omar': 78};

  String topStudent = '';
  int highestMark = 0;

  students.forEach((name, mark) {
    if (mark > highestMark) {
      highestMark = mark;
      topStudent = name;
    }
  });

  print('The top student is $topStudent with mark $highestMark');
}
