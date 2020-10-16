import 'package:flutter/material.dart';
import 'package:my_app/bottom_bar.dart';
import 'package:my_app/utils.dart';
import 'file_list.dart';
import './model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Model model = new Model();
  onUpload() async {
    final files = await pickOpenFiles();
    if (files.length > 0) {
      for (final file in files) {
        model.fileList.add(file);
        setState(() => {
              model,
            });
      }
    }
  }

  onCombine() {
    combine(model.fileList);
  }

  @override
  Widget build(BuildContext context) {
    final allHeight = MediaQuery.of(context).size.height;
    final bottomHeight = 101.0;
    final space = 34.0;

    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Container(
            child: Column(children: [
              Container(
                  margin: EdgeInsets.all(10),
                  height: allHeight - bottomHeight - space - 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(200, 202, 220, 200),
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 1,
                      )),
                  child: FileList(fileList: model.fileList)),
              SizedBox(height: space),
              Container(
                child: BottomBar(),
                height: bottomHeight,
              )
            ]),
          )),
    );
  }
}
