// Exercise 2:
void main() {
  // a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
  String country = 'syria';
  int year = 2001;
  double weight = 5.5;
  bool likesCoding = true;

  // b) Print a sentence that includes all values using string interpolation.
  print('''
my country:$country
my years:$year
my weight:$weight
I like Coding::$likesCoding
''');
  // c) Change weight to a different value and print only the updated one.
  weight = 6.5;
  print('My weight:$weight');
}
