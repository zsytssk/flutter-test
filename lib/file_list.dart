import 'dart:io';
import 'package:flutter/material.dart';

class FileList extends StatelessWidget {
  final List<String> fileList;
  FileList({this.fileList});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xc8cadc),
      child: ListView.builder(
          itemCount: fileList.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.file(File(fileList[index]), width: 100, height: 100);
          }),
    );
  }
}
