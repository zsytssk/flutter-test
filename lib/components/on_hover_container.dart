import 'package:flutter/material.dart';

typedef BuildFun = Widget Function(bool isHover);

class OnHoverContainer extends StatefulWidget {
  final void Function() onTap;
  final BuildFun build;
  OnHoverContainer({this.onTap, this.build}) : super();
  @override
  _OnHoverContainerState createState() => _OnHoverContainerState();
}

class _OnHoverContainerState extends State<OnHoverContainer> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        hoverColor: Colors.transparent,
        onTap: () {
          widget.onTap();
        },
        onHover: (value) {
          if (value) {
            setState(() {
              isHover = true;
            });
          } else {
            setState(() {
              isHover = false;
            });
          }
        },
        child: widget.build(isHover));
  }
}
