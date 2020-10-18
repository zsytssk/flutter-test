import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:my_app/components/on_hover.dart';
import 'package:my_app/components/on_hover_image.dart';

class FileItem extends StatefulWidget {
  final String filePath;
  FileItem({this.filePath});

  @override
  _FileItemState createState() => _FileItemState();
}

class _FileItemState extends State<FileItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          print(value);
          if (value) {
            setState(() {
              isHover = true;
            });
          } else {
            setState(() {
              isHover = false;
            });
          }
        },
        child: DottedBorder(
          strokeWidth: 1,
          customPath: (size) {
            return Path()
              ..moveTo(0, size.height)
              ..lineTo(size.width, size.height);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.file(File(widget.filePath), width: 60, height: 60),
                      SizedBox(width: 20),
                      Container(
                        width: 30,
                        height: 30,
                        child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                            decoration: const InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(bottom: 13, top: 5),
                            )),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/icon_grid.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (isHover)
                    OnHoverImage(
                      width: 35,
                      height: 24,
                      img1: "assets/images/icon_del_normal.png",
                      img2: "assets/images/icon_del_hover.png",
                    )
                ]),
          ),
        ),
      ),
    );
  }
}
