import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final Widget child1;
  final Widget child2;
  OnHover({this.child1, this.child2});

  @override
  _OnHoverState createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        onHover: (value) {
          print(value);
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
        child: isHover ? widget.child2 : widget.child1);
  }
}
