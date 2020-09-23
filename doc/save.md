- dart design pattern https://dart.dev/guides/language/effective-dart/design

## 获取类型

```dart
a.runtimeType
```

## class

```dart
class Point {
  int x, y;
  Point(this.x, this.y);

  distanceTo(Point other_p) {
    return sqrt(pow(other_p.x - x, 2) + pow(other_p.y - y, 2));
  }

  // name constructor
  Point.origin() {
      x = 0;
      y = 0;
  }
}
```
