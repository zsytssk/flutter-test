import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/home/home.dart';

main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        "/home": (_) => Home(),
      }));
}
