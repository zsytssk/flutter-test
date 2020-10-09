import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';

class FileList extends StatefulWidget {
  @override
  _FileListState createState() => _FileListState();
}

class _FileListState extends State<FileList> {
  List<FileSystemEntity> fileList = [];
  _FileListState() {
    dirContents('./').then((value) => {
          setState(() {
            fileList = value;
          })
        });
  }
  @override
  Widget build(BuildContext context) {
    if (fileList.length == 0) {
      return Column(
        children: [
          Text("Files:",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
          SizedBox(height: 10),
          Text('empty', style: TextStyle(color: Colors.grey[450])),
        ],
      );
    }

    final children = <Widget>[];
    for (var i = 0; i < fileList.length; i++) {
      String path = fileList[i].path;
      children.add(Container(
        color: Colors.white,
        margin: EdgeInsets.only(left: 3, right: 3, bottom: 5),
        child: Text('$path', style: TextStyle(color: Colors.black)),
      ));
    }
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text("Files",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0))),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            children: children,
          ),
        ),
      ],
    );
  }
}

Future<List<FileSystemEntity>> dirContents(String dirStr) async {
  var files = <FileSystemEntity>[];
  final dir = new Directory(dirStr);
  final exist = await dir.exists();

  if (!exist) {
    return files;
  }
  var completer = Completer<List<FileSystemEntity>>();
  var lister = dir.list(recursive: false);
  lister.listen((file) => files.add(file),
      // should also register onError
      onDone: () => completer.complete(files));
  return completer.future;
}
