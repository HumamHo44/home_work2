// Create a function that takes named parameters firstName, lastName, and an optional named
// parameter age. Print the full name and, if age is provided, also print 'Age: X'.
void main() {
  showPerson(firstName: 'ali', lastName: 'aassan', age: 25);
  showPerson(firstName: 'humam', lastName: 'omar');
}

void showPerson({
  required String firstName,
  required String lastName,
  int? age,
}) {
  print('full name: $firstName $lastName');

  if (age != null) {
    print('age: $age');
  }
}
