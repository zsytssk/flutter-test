import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(context);
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
