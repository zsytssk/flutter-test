import 'dart:math';

class Point {
  int x, y;
  Point(this.x, this.y);

  distanceTo(Point other_p) {
    return sqrt(pow(other_p.x - x, 2) + pow(other_p.y - y, 2));
  }
}

void main() {
  var a = Point(1, 1);
  var b = Point(1, 1);

  print(a.runtimeType);
}
