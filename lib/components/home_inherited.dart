import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedWidgetOnValueListen<T, M extends ValueListenable<T>>
    extends InheritedWidget {
  InheritedWidgetOnValueListen({
    Key key,
    @required this.model,
    @required Widget Function(BuildContext, T, Widget) builder,
  }) : super(
            key: key,
            child: ValueListenableBuilder(
                valueListenable: model, builder: builder));

  final M model;

  static InheritedWidgetOnValueListen of<T, M extends ValueListenable<T>>(
      BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<
        InheritedWidgetOnValueListen<T, M>>();
  }

  @override
  bool updateShouldNotify(InheritedWidgetOnValueListen old) => true;
}
