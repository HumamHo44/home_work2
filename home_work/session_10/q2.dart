/*
 Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
*/

void main() {
  Car car1 = Car();
  car1.brand = 'BMW';
  car1.year = 2025;
  print('brand: ${car1.brand}');
  print('year: ${car1.year}');

  Car car2 = Car();
  car2.brand = '';
  car2.year = 1885;
}

class Car {
  String _brand = '';
  int _year = 0;

  set brand(String name) {
    if (name.isEmpty) {
      print('This car is rejected.');
    } else {
      _brand = name;
    }
  }

  String get brand => _brand;

  set year(int value) {
    if (value <= 1886) {
      print('This car is rejected.');
    } else {
      _year = value;
    }
  }

  int get year => _year;
}
