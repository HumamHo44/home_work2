/*
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
*/

void main() {
  Product product = Product();
  product.name = 'BMW';
  product.price = 20000;
  product.discountedPrice;
  print('name:${product.name}');
  print('price:${product.price}');
  print('discountedPrice:${product.discountedPrice}');
}

class Product {
  String _name = '';
  int _price = 0;
  set name(String name) {
    if (name.isEmpty) {
      print('Name rejected');
    } else {
      _name = name;
    }
  }

  String get name => _name;

  set price(int value) {
    if (value <= 0) {
      print('The number is rejected');
    } else {
      _price = value;
    }
  }

  int get price => _price;
  double get discountedPrice => _price * 0.9;
}
