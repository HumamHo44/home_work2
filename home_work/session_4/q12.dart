// Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
// have a parent. Use a switch statement on an area variable (general or restricted) to decide what
// message to print.
void main() {
  int age = 16;
  bool hasParent = true;
  String area = 'restricted';

  if (age < 18) {
    if (hasParent) {
      print("Access allowed");
    } else {
      print("Access denied");
    }
  } else {
    switch (area) {
      case 'general':
        print("access allowed to the general area");
        break;
      case 'restricted':
        print("access allowed to the restricted area");
        break;
      default:
        print("Unknown area.");
    }
  }
}
