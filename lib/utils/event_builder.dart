import 'package:flutter/material.dart';
import './event.dart';

typedef Builder<T> = Widget Function(BuildContext context, T value);

class EventBuilder<T extends Event> extends StatefulWidget {
  final T model;
  final List<String> events;
  final Builder<T> builder;
  const EventBuilder({Key key, this.model, this.events, this.builder})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => _EventBuilderState();
}

class _EventBuilderState<T extends Event> extends State<EventBuilder<T>> {
  int value = 0;
  @override
  void initState() {
    super.initState();
    for (final event in widget.events) {
      widget.model.on(event, _valueChanged);
    }
  }

  @override
  void dispose() {
    for (final event in widget.events) {
      widget.model.off(event, callback: _valueChanged);
    }
    super.dispose();
  }

  void _valueChanged(_) {
    setState(() {
      value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.model);
  }
}
