import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home/home.dart';
import 'package:my_app/other_page.dart';

main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        "/preview": (_) => Preview(),
        "/home": (_) => MyHomePage(),
      }));
}
