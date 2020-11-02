import 'package:flutter/material.dart';
import './event.dart';

typedef Builder<T> = Widget Function(
    BuildContext context, T value, Widget child);

class EventBuilder<T extends Event> extends StatefulWidget {
  final T eventModel;
  final Set<String> events;
  final Widget child;
  final Builder<T> builder;
  const EventBuilder(
      {this.child, Key key, this.eventModel, this.events, this.builder})
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
      widget.eventModel.on(event, _valueChanged);
    }
  }

  @override
  void dispose() {
    for (final event in widget.events) {
      widget.eventModel.off(event, callback: _valueChanged);
    }
    super.dispose();
  }

  void _valueChanged() {
    setState(() {
      value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.eventModel, widget.child);
  }
}
