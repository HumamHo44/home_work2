// Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
// '/products', '/profile', or other). Handle each case with appropriate output, including maps and null
// safety where needed.

void main() {
  String? path = '/products';

  Map<String, dynamic> profile = {'name': 'humam', 'age': 24};
  Map<String, dynamic> products = {'name': 'aplle', 'price': 240};
  if (path.isEmpty) {
    print('Invalid path');
    return;
  }

  switch (path) {
    case '/':
      print('welcom to home');
      break;
    case '/profile':
      print('welcom to Home $profile');
      break;
    case '/products':
      print('welcom to products $products');
      break;

    default:
      print('404 page not found');
  }
}
