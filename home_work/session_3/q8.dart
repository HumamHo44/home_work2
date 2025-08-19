// Exercise 8:

void main() {
  // 8. a) Create a Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99}.

  Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99};

  // b) Print book['title'], update price, and add a new key 'author'.

  print(book['title']);
  book['price'] = 30;
  book['author'] = 'humam';
  print(book);

  // c) Print all keys, values, and check if 'pages' exists as a key.
  print(book.keys);
  print(book.values);
  print(book.containsKey('pages'));
}
