/*
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
*/
void main() {
  Book book = Book();
  book.title = 'dart programming';
  book.pages = 120;

  print('title: ${book.title}');
  print('reading time: ${book.readingTime} minutes');
}

class Book {
  String _title = '';
  int _pages = 0;

  set title(String title) {
    if (title.isEmpty) {
      print('invalid title');
    } else {
      _title = title;
    }
  }

  String get title => _title;

  set pages(int value) {
    if (value <= 0) {
      print('invalid pages');
    } else {
      _pages = value;
    }
  }

  int get readingTime => _pages * 2;
}
