https://flutter.dev/docs
https://www.youtube.com/watch?v=TiH0HYBFMMI

https://www.youtube.com/watch?v=p5dkB3Mrxdo&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=16

## 2020-10-08 09:42:25

- @ques flutter row wrap

## 2020-09-27 09:31:11

- @ques
  - scaffold safeArea AppBar Text Container
  - center

dart

## 2020-09-25 09:39:43

- @ques 怎么显示 dialog
  - 下面 textAlign 怎么没有用

```dart
appBar: AppBar(
title: Text('Welcome to Flutter',
    textAlign: TextAlign.justify,
    style: TextStyle(color: Colors.red))),

```

## 2020-09-23 14:13:01

- @ques dart 原声的 stream 怎么用

- android 下载
- xcode 下载

### end

- https://dart.dev/guides/libraries/create-library-packages

- @ques `_cache.putIfAbsent(name, () => Logger._internal(name));` 这怎么理解
- @ques export part library
- @ques mixins
- https://dart.dev/guides/language/language-tour#generators

- @ques dart write a future resolve reject

- @ques ... Point.withAssert(this.x, this.y) : assert(x >= 0) {
  print('In Point.withAssert(): ($x, $y)');
  }
- @ques 如何获取一个的类型
- @ques The constructor being called isn't a const constructor.

- @ques dart iterable to set

- @ques 能不能用 optional mark

- @ques dart params;

## 2020-09-17 15:45:58

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

https://www.youtube.com/watch?v=FLQ-Vhw1NYQ&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=4&t=982s

## 2020-09-17 09:30:23

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
- @ques list expand
- @ques override 没什么用

## 2020-09-09 10:03:03

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

### end

- @ques 如何在本地运行 dart 语言

- @ques @dart `${data}` 这种在 dart 中怎么写

- @ques go tutorial

/bin/sh: dart: command not found
