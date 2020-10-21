import 'package:flutter/material.dart';
import 'package:my_app/file_list/file_item.dart';
import 'package:my_app/home/home_model.dart' as Model;

class FileList extends StatelessWidget {
  final List<Model.FileItem> fileList;
  final Model.HomeNotifier model;
  FileList({this.fileList, this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xc8cadc),
      child: ListView.builder(
          itemCount: fileList.length,
          itemBuilder: (BuildContext context, int index) {
            return FileItem(file: fileList[index]);
          }),
    );
  }
}
