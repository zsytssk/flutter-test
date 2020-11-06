import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String time;
  getTime() async {
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Europe');

    setState(() {
      time = DateFormat.jm().format(DateTime.now());
    });
  }

  @override
  initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Text('hello world $time', style: TextStyle(color: Colors.white));
  }
}
