import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  getTime() async {
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Europe');
    print(response.body);
  }

  @override
  initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Text('hello world1', style: TextStyle(color: Colors.white));
  }
}
