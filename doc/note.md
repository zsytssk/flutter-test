- https://dart.dev/guides/language/language-tour#constructors

## 2020-09-17 15:45:58

- @ques ... Point.withAssert(this.x, this.y) : assert(x >= 0) {
  print('In Point.withAssert(): ($x, $y)');
  }

- @ques 如何获取一个的类型

- @ques The constructor being called isn't a const constructor.

- @ques dart

- @ques dart iterable to set

-

- @ques dart params;

- @ques 能不能用 optional mark

- @ques Symbols 能干什么

```dart
// const Scrollbar 是什么意思
const Scrollbar({Key key, @required Widget child})

// .. 是干什么的
var sb = StringBuffer();
sb.write('foo')
  ..write('bar'); // Error: method 'write' isn't defined for 'void'.
```

### end

- @ques assert 到底是干什么的
  - debug 模式会报错

## 2020-09-17 09:30:23

https://www.youtube.com/watch?v=FLQ-Vhw1NYQ&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=4&t=982s

- @ques Isolates

- @ques Metadata @todo 能干什么...

- @ques 下面是什么意思

```dart
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}
```

### end;

- @todo (mixin)[https://dart.dev/guides/language/language-tour#adding-features-to-a-class-mixins]
- @todo (abstract class)[https://dart.dev/guides/language/language-tour#abstract-classes]

- https://dart.dev/samples
  - async mixin
- @ques final keyword

## 2020-09-17 09:28:28

- @ques list expand

## 2020-09-09 10:03:03

- @ques override 没什么用

- dart tutorial for js
  dart 高级的 js
  with

## 2020-09-07 09:59:07

- @todo `async async*`

- @ques `class A with B, C` B + C 有相同名字的方法 怎么分别调用

  - 好像现在没有 https://github.com/flutter/flutter/issues/60448
  - https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
  - keyword dart lang multiple mixin has same method or variable name

- @ques @override 和普通调用 super.method 有什么区别

- `DateTime.now().difference(launchDate).inDays ~/ 365;`

- @ques 如何写 `import 'path/to/my_other_file.dart';`
  - 本地 package

## 2020-09-04 09:59:50

- @ques dart 所有的类型

## 2020-09-02 09:58:34

- @ques 如何在本地运行 dart 语言

- @ques @dart `${data}` 这种在 dart 中怎么写

- @ques go tutorial

/bin/sh: dart: command not found
