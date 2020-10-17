import 'package:flutter/material.dart';
import 'package:my_app/components/radio_label.dart';
import 'package:my_app/model.dart';

const textStyle = TextStyle(fontSize: 12);

class BottomBar extends StatelessWidget {
  final Model model;
  final void Function(Model model) setModel;
  BottomBar({this.model, this.setModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(left: 10),
            width: 200,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('字号：--', style: textStyle),
              Text('字体类型', style: textStyle),
              Container(
                child: RadioLabel(
                  value: FontType.XML,
                  groupValue: model.fontType,
                  label: 'XML(Laya)',
                  onChanged: (FontType value) {
                    model.setFontType(value);
                    setModel(model);
                  },
                ),
              ),
              Container(
                child: RadioLabel(
                  value: FontType.TEXT,
                  groupValue: model.fontType,
                  label: 'Text(Cocos2d)',
                  onChanged: (FontType value) {
                    model.setFontType(value);
                    setModel(model);
                  },
                ),
              ),
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
