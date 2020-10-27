import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home/home.dart';
import 'package:my_app/other_page.dart';
import 'package:provider/provider.dart';
import './home/home_model.dart';

main() async {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeNotifier(HomeData())),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
          routes: {
            "/preview": (_) => Preview(),
            "/home": (_) => MyHomePage(),
          })));
}
