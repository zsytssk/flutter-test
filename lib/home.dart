import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(child: Text('click me'), onPressed: () {}),
              RaisedButton(child: Text('click me'), onPressed: () {}),
              RaisedButton(child: Text('click me'), onPressed: () {}),
            ],
          )),
    );
  }
}
