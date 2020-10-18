import 'package:flutter/material.dart';
import 'package:my_app/file_list/file_item.dart';

class FileList extends StatelessWidget {
  final List<String> fileList;
  FileList({this.fileList});

  @override
  Widget build(BuildContext context) {
    print(fileList);
    return Container(
      color: Color(0xc8cadc),
      child: ListView.builder(
          itemCount: fileList.length,
          itemBuilder: (BuildContext context, int index) {
            return FileItem(filePath: fileList[index]);
          }),
    );
  }
}
