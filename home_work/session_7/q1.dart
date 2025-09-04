// Q1. Sum, Average & Compare - Ask the user for three numbers.
//- Print their sum and average.
// Then, check if the average is greater than 50 or not.

void main() {
  List<int> numbers = [2, 4, 6];

  int sum = 0;
  for (var item in numbers) {
    sum += item;
  }
  print("sum: $sum");
  double average = sum / numbers.length;
  print("average: $average");

  if (average > 50) {
    print('average > 50 $average');
  } else {
    print('false');
  }
}
