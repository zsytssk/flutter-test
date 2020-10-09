import 'package:flutter/material.dart';
import 'package:my_app/home.dart';
import 'package:my_app/paint.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomPaintRoute(),
    );
  }
}
