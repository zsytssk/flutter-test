https://www.youtube.com/watch?v=pDzQGolJayE&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ&index=24

https://flutter.dev/docs/get-started/install

https://medium.com/flutter-community/flutter-the-advanced-layout-rule-even-beginners-must-know-edc9516d1a2

## 2020-11-03 09:46:22

- @ques Riverpod 怎么改变

- @ques 怎么切换 route

- @ques 怎么设置 loading page

BottomBar

## 2020-10-30 09:30:54

- @ques 怎么把 event 转化成 observer

```dart
Future.microtask(() =>
    context.read<MyNotifier>(context).fetchSomething(someValue);
  );

  Provider.value

Foo(
  child: Consumer<A>(
    builder: (_, a, child) {
      return Bar(a: a, child: child);
    },
    child: Baz(),
  ),
)
```

## 2020-10-28 09:31:16

context 是解决我以前的问题 在所有关系树中 下级怎么知道父级

changeNotifierProxyProvider
provider 的所有 api
streamProvider
FutureBuilder

- event to stream

- Duartion 里面到底是什么方法

- @ques GetX 如果 我有一个对象多个实例 我怎么处理 不太好处理吧

## state manager

-

- @ques bloc https://bloclibrary.dev/#/gettingstarted

- @todo 问下 接 sdk 需要哪些知识

- @ques Observer

- @ques https://www.youtube.com/watch?v=oxeYeMHVLII&t=143s

- @ques stream-builder

  - https://www.youtube.com/watch?v=PT3v28eyOqg
  - provider 提供整个对象 + streamBuilder 监听某一个的变化 -> streamBuilder 就像 useSelector 一样
  - 可以把 streamBuilder 改成一个对一个对象的监听...
  - 将一个 event 变成一个 stream

- [bloc](https://bloclibrary.dev/#/coreconcepts?id=blocs)

- ChangeNotifier - PropertyChangeNotifier； model+event

  - 我自己的模式， 能不能利用 dart 原生的语法代替 event

- https://www.youtube.com/watch?v=4-_aRU0urUc

- bloc -> flutter

- https://www.solutelabs.com/blog/flutter-state-management-everything-you-need-to-know

### end

- @ques flutter-web

- @todo select provider 所有的 api

## 2020-10-23 11:20:55

- ListTile | slider

- @todo global State management

  - https://flutter.dev/docs/development/data-and-backend/state-mgmt

- @todo ReOrderListView

## 2020-10-21 09:26:56

- @ques router

- @ques flutter file picker showSavePanel 怎么保存文件
- @ques ios open file 权限

### end

- @ques 换 app 的 icon

  - app_icon.ico

- @ques inherited widget | valueListenerBuilder

inHeritedWidget
ValueListener

- @todo 将传递 model 的全部删除

- @bug 失败 可能是 HomeInheritedWidget 需要 child child 的 context 才能用 of
  - 是不是系统的问题
  -
- @ques 要不要写一个
  - OnHover.build

fit
InkWell

- @ques ValueListenable<T>

  - @ques M =

## 2020-10-20 09:38:41

Configuring Flutter to use a mirror site

- @todo build apk

- dart 定义 一个 object Map 好像不行

## end

- @todo rect_pack

  - https://dart.dev/guides/libraries/create-library-packages
  - 如何添加 demo api
  - 怎么在线上看不到
  - 添加文档 dartdoc
    - 怎么看 文档
  - 写 test

- @todo 将项目抽离出来

- @ques 如何成为一个 已验证发布者
  rect-pack dart

## 2020-10-18 10:15:53

simple_animation

- @ques macos The linked and embedded framework 'App.framework' is missing one or more architectures required by this target: arm64.
- FlutterMacOS.framework' is missing one or more architectures required by this target: arm64.

fit

### end

- @todo 生成字体的格式...

  - letter.charCodeAt(0)

- @ques 如何 alert
  - @ques 拥有相同的 charCode 的提示
  - 加载成功

## 2020-10-11 09:53:19E

- @ques flutter InkWell

- @ques 每一个字体的样式都需要重新设置 也挺麻烦的 N

  - 有没有继承的关系

- @ques radio 的 size 怎么设置

  - 怎么设置 shadow 的大小
  - 怎么点击字体触发 radio 的事件

- @ques RadioList

- @ques 如何获取上级的 state

  - 不需要直接传进去

- @ques 直接 icon + 文字

- @ques 如何获取上级的 state

- @ques Flutter: how to get DPI of device screen

- @ques 背景色 + border-radius

- @todo 预览

- @todo dart rect pack...

- @qeus https://github.com/google/flutter-desktop-embedding/tree/master/plugins/file_chooser

  - file_chooser

- @ques 怎么修改文件名

- @ques 换 app 的 icon

  - app_icon.ico

- @ques 如何 picker 多个文件

- @ques 如何选择文件夹 保存文件

- @ques go-flutter 是什么东西

- @ques 怎么排列矩形
  - @ques [potpack](https://github.com/mapbox/potpack)
  - [bin-pack](https://github.com/bryanburgers/bin-pack)

### end

怎么打包成 exe

alert 生成成功

## 2020-10-08 09:42:25

- @ques listView 如何出现滚动条

- @ques flutter row wrap

- @ques header prev 按钮 怎么处理
  - 能不能将 header 独立出来

## 2020-09-29 09:48:54

- @ques 打包之后的大小

  - 如何发布 flutter 项目

- @ques search flutter syntax is old

  - 只有 MaterialApp 吗

- @ques 图片旋转

- @ques 怎么获取当前元素

- @ques goTest

- @ques row 换行

### end

- @ques center 偏移怎么处理

  - margin

- @ques StatefulWidget 的 state 能不能获取 自己

  - StatefulWidget (this.widget)

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
