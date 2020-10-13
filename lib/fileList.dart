import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import './utils.dart';

class FileList extends StatefulWidget {
  @override
  _FileListState createState() => _FileListState();
}

class _FileListState extends State<FileList> {
  List<String> fileList = [];
  onUpload() async {
    pickFiles();
    // final file = await pickFiles();
    // if (file == null || fileList.contains(file)) {
    //   return;
    // }

    // fileList.add(file);
    // setState(() => {
    //       fileList,
    //     });
    // print(file);
  }

  onCombine() {
    combine(fileList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text("Files",
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
                SizedBox(width: 20),
                RaisedButton(
                  onPressed: onUpload,
                  child: Text('upload file'),
                ),
                SizedBox(width: 20),
                fileList.length == 0
                    ? SizedBox(width: 20)
                    : RaisedButton(
                        onPressed: onCombine,
                        child: Text('combine'),
                      ),
              ],
            )),
        SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            spacing: 10.0,
            children: fileList
                .map(
                  (_file) => Image.file(File(_file), width: 100, height: 100),
                )
                .toList(),
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
