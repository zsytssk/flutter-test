- dart design pattern https://dart.dev/guides/language/effective-dart/design

## generics

```dart
var names = List<String>();
names.addAll(['Seth', 'Kathy', 'Lars']);
names.add(42);
```

## 类型定义

```dart
typedef Compare = int Function(Object a, Object b);
```

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

## mixin

```dart
mixin Musical {
  bool canPlayPiano = false;
}class Queue {
  static const initialCapacity = 16;
  // ···
}

void main() {
  assert(Queue.initialCapacity == 16);
}

class A with Musical {}
```

## write future

```dart
import 'dart:async';

Future<String> test() {
  Completer c = new Completer<String>();
  new Timer(new Duration(seconds: 2), () {
    // c.complete('done with time out');
    c.completeError('fail with time out');
  });
  return c.future;
}

void main() async {
  test().catchError((e) => print(3));
}
```

## dart concurrency

```dart
import 'dart:io';
import 'dart:async';
import 'dart:isolate';

Future<SendPort> initIsolate() async {
  Completer completer = new Completer<SendPort>();
  ReceivePort isolateToMainStream = ReceivePort();

  isolateToMainStream.listen((data) {
    if (data is SendPort) {
      SendPort mainToIsolateStream = data;
      completer.complete(mainToIsolateStream);
    } else {
      print('[isolateToMainStream] $data');
    }
  });

  Isolate myIsolateInstance =
      await Isolate.spawn(myIsolate, isolateToMainStream.sendPort);
  return completer.future;
}

void myIsolate(SendPort isolateToMainStream) {
  ReceivePort mainToIsolateStream = ReceivePort();
  isolateToMainStream.send(mainToIsolateStream.sendPort);

  mainToIsolateStream.listen((data) {
    print('[mainToIsolateStream] $data');
    exit(0);
  });

  isolateToMainStream.send('This is from myIsolate()');
}

void main() async {
  SendPort mainToIsolateStream = await initIsolate();
  mainToIsolateStream.send('This is from main() 1');
  mainToIsolateStream.send('This is from main() 2');
}

```

## flat list

```dart
var a = [
    [1, 2, 3],
    ['a', 'b', 'c'],
    [true, false, true]
  ];
  var flat = a.expand((i) => i).toList();
```

## timestamp

```dart
DateTime.now().millisecondsSinceEpoch

```

## class print

```dart
class A {
  int b = 1;
  int c = 1;
  String toString() {
    String s = "b=$b;c=$c;";
    return s;
  }
}
```

## multi dot

```dart
var a = A()
    ..b = 1
    ..c = 2;
```

## optional chain

```dart
b ??= value;
```
