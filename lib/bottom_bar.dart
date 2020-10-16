import 'package:flutter/material.dart';
import 'package:my_app/model.dart';

class BottomBar extends StatelessWidget {
  final Model model;
  BottomBar({this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 100,
            color: Colors.red,
            child: Column(children: [
              Text('字号：--'),
              Text('字体类型'),
              Container(
                height: 100,
                child: const ListTile(
                  title: Text('One-line with trailing widget'),
                  trailing: Icon(Icons.more_vert),
                ),
                //  ListTile(
                //   title: const Text('XML(Laya)'),
                //   leading: Radio(
                //     value: FontType.XML,
                //     groupValue: model.fontType,
                //     onChanged: (FontType value) {},
                //   ),
                // ),
              ),
              // Container(
              //   child: ListTile(
              //     title: const Text('TEXT(Cocos2d)'),
              //     leading: Radio(
              //       value: FontType.XML,
              //       groupValue: model.fontType,
              //       onChanged: (FontType value) {},
              //     ),
              //   ),
              // ),
            ])),
        // Container(
        //     color: Colors.blue,
        //     width: 412,
        //     child: Row(
        //       children: [
        //         Column(children: [
        //           Text('间距'),
        //           TextField(
        //             decoration:
        //                 InputDecoration(border: InputBorder.none, hintText: ''),
        //           ),
        //           Text('删除全部'),
        //         ]),
        //         Column(children: [
        //           Text('上传图片'),
        //           TextField(
        //             decoration:
        //                 InputDecoration(border: InputBorder.none, hintText: ''),
        //           ),
        //           Text('生成字体'),
        //         ])
        //       ],
        //     )),
      ],
    );
  }
}
