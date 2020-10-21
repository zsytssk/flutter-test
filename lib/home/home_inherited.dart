import 'package:flutter/material.dart';

// class HomeInheritedWidget<T, M extends ValueNotifier<T>>
//     extends InheritedWidget {
//   final M model;
//   HomeInheritedWidget(
//       {this.model, Widget Function(BuildContext, T, Widget) builder})
//       : super(
//             child: ValueListenableBuilder(
//           valueListenable: model,
//           builder: (context, value, child) {
//             print(model);
//             print(value);
//             return Text(value.toString());
//           },
//         ));
//   bool updateShouldNotify(HomeInheritedWidget oldWidget) {
//     return true;
//   }

//   static HomeInheritedWidget of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<HomeInheritedWidget>();
//   }
// }

class HomeInheritedWidget<T, M extends ValueNotifier<T>>
    extends InheritedWidget {
  final M model;
  HomeInheritedWidget(
      {this.model, Widget Function(BuildContext, T, Widget) builder})
      : super(
            child: ValueListenableBuilder(
                valueListenable: model, builder: builder));
  bool updateShouldNotify(HomeInheritedWidget oldWidget) {
    print('test:> $oldWidget');
    return true;
  }

  static HomeInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeInheritedWidget>();
  }
}
