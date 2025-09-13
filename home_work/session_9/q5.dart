// Q5 Create a class Course with attributes title and duration (default = 3 months).
// Create two
// courses: one with custom duration and one with the default. Print both.

void main() {
  Course course1 = Course('dart', 7);
  print('title: ${course1.title} ,duration: ${course1.duration}');
  Course course2 = Course('flutter');
  print('title: ${course2.title} ,duration: ${course2.duration}');
}

class Course {
  String title;
  int duration;
  Course(this.title, [this.duration = 3]);
}
