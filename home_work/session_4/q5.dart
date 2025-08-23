// Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
// statement to print a message for each grade.

void main() {
  int mark = 90;

  String grade;

  if (mark >= 90) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  switch (grade) {
    case 'A':
      print('excellent');
      break;
    case 'B':
      print('very good');
      break;
    case 'C':
      print('good');
      break;
    case 'D':
      print('Failed');
      break;
    default:
      print('invalid grade');
  }
}
