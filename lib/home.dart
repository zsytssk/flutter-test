import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: Text("hello"),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0.0,
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/timg.jpg'),
                      radius: 40.0),
                ),
                Divider(height: 60.0, color: Colors.grey[800]),
                Text("NAME",
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
                SizedBox(height: 10),
                Text("zsy",
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                SizedBox(height: 30),
                Text("CURRENT LEVEL",
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
                SizedBox(height: 10),
                Text("8",
                    style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                SizedBox(height: 30),
                Row(children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 3),
                  Text("zsytssk@gmail.com",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18.0,
                          letterSpacing: 1.0)),
                ])
              ],
            ),
          )),
    );
  }
}
