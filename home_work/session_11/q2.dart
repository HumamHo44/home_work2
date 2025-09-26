/*
Q2
Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.
*/
void main() {
  Square square = Square(5);
  Rectangle rectangle = Rectangle(10, 10);
  Triangle triangle = Triangle(4, 6);
  List<Shaps> shapes = [square, rectangle, triangle];
  double area = 0;
  for (var shape in shapes) {
    area += shape.area();
  }
  print('area: ${area}');

  double cost = 0;

  if (area <= 50) {
    cost = area * 1.50;
  } else if (area <= 150) {
    cost = 50 * 1.50 + (area - 50) * 1.25;
  } else {
    cost = 50 * 1.50 + 100 * 1.25 + (area - 150) * 1.0;
  }

  print('cost:  ${cost.toStringAsFixed(2)}');
}

class Shaps {
  area() {
    return 0;
  }
}

class Square extends Shaps {
  double _side;
  Square(this._side);

  set side(double value) {
    if (value > 0) {
      _side = value;
    } else {
      print('Error: Side length must be greater than zero');
    }
  }

  double get side => _side;

  @override
  area() {
    return _side * _side;
  }
}

class Rectangle extends Shaps {
  double _width;
  double _height;
  Rectangle(this._width, this._height);

  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print('Error: Width must be greater than zero');
    }
  }

  double get width => _width;

  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print('Error: height must be greater than zero');
    }
  }

  double get height => _height;

  @override
  area() {
    return _height * _width;
  }
}

class Triangle extends Shaps {
  double _base;
  double _height;

  Triangle(this._base, this._height);

  set base(double value) {
    if (value > 0)
      _base = value;
    else
      print('Error: Base must be greater than zero');
  }

  double get base => _base;

  set height(double value) {
    if (value > 0)
      _height = value;
    else
      print('Error: Height must be greater than zero');
  }

  double get height => _height;

  double area() {
    return (_base * _height) / 2;
  }
}
