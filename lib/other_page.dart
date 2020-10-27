import 'package:flutter/material.dart';
import 'package:my_app/home/home_model.dart';
import 'package:provider/provider.dart';
import 'dart:io';

class Preview extends StatefulWidget {
  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomeNotifier>();
    return Container(
        child: Column(children: [
      RaisedButton(
          child: Text('back'),
          onPressed: () {
            Navigator.of(context).pop();
          }),
      Row(
          children: model == null
              ? []
              : model.value.fileList.map((item) {
                  return Image.file(File(item.path), width: 60, height: 60);
                }).toList())
    ]));
  }
}
