import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Creating a Circle object and calculating its area
  Circle circle = Circle(5.0);
  print("Area of the Circle with radius ${circle.radius}: ${circle.calculateArea()}");

  // Creating a Square object and calculating its area
  Square square = Square(4.0);
  print("Area of the Square with side ${square.side}: ${square.calculateArea()}");
}
