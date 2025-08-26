// Write a Dart program that evaluates three integer variables with different logical and comparison
// expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
// one of the expressions.

void main() {
  int a = 5, b = 10, c = 7;

  bool a1 = a > b;
  bool a2 = a != b;
  bool a3 = a + b >= c;

  print(a1);
  print(a2);
  print(a3);

  if (a1) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
