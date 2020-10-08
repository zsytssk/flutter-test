import 'dart:io';
import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

main() async {
  var files = await dirContents('./');
  print("$files");

  runApp(MaterialApp(home: MyHomePage()));
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
