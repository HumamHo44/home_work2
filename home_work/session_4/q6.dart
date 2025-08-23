// Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
// scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
// greater than or equal to 40.

void main() {
  List<int>? number = [1, 2, 4, 5, 6, 7, 8, 50];
  if (number.isEmpty) {
    print('No scores');
  } else {
    int sum = number.first + number.last;
    if (sum >= 40) {
      print(sum);
    } else {
      print("sum < 40");
    }
  }
}
