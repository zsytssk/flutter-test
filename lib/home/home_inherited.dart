import 'package:flutter/material.dart';
import 'package:my_app/home/home_model.dart';

class HomeInheritedWidget extends InheritedWidget {
  HomeInheritedWidget({
    Key key,
    @required this.model,
    @required Widget Function(BuildContext, HomeData, Widget) builder,
  })  : assert(model != null),
        assert(builder != null),
        super(
            key: key,
            child: ValueListenableBuilder(
                valueListenable: model, builder: builder));

  final HomeNotifier model;

  static HomeInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeInheritedWidget>();
  }

  @override
  bool updateShouldNotify(HomeInheritedWidget old) => true;
}
