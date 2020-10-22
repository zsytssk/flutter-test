import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeInheritedWidget<T, M extends ValueListenable<T>>
    extends InheritedWidget {
  HomeInheritedWidget({
    Key key,
    @required this.model,
    @required Widget Function(BuildContext, T, Widget) builder,
  }) : super(
            key: key,
            child: ValueListenableBuilder(
                valueListenable: model, builder: builder));

  final M model;

  static HomeInheritedWidget of<T, M extends ValueListenable<T>>(
      BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<HomeInheritedWidget<T, M>>();
  }

  @override
  bool updateShouldNotify(HomeInheritedWidget old) => true;
}
