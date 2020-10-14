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
  ScrollController _scrollController = new ScrollController();
  onUpload() async {
    final files = await pickOpenFiles();
    print(files);
    if (files.length > 0) {
      for (final file in files) {
        fileList.add(file);
        setState(() => {
              fileList,
            });
      }
      return;
    }
  }

  onCombine() {
    combine(fileList);
  }

  @override
  Widget build(BuildContext context) {
    final allHeight = MediaQuery.of(context).size.height;
    final bottomBarHeight = 60.0;
    return Column(
      children: [
        Container(
          height: allHeight - bottomBarHeight,
          child: ListView.builder(
              controller: _scrollController,
              itemCount: fileList.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.file(File(fileList[index]),
                    width: 100, height: 100);
              }),
        ),
        Container(
          height: bottomBarHeight,
          color: Colors.white,
          child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
        )
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
