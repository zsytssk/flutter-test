// import 'package:file_picker/file_picker.dart';
import 'package:file_chooser/file_chooser.dart';
import 'package:image/image.dart';
import 'dart:io';

pickFiles() {
  return showOpenPanel();
}

combine(List<String> fileList) {
  final mergedImage = Image(500, 500);
  for (int i = 0; i < fileList.length; i++) {
    final img = decodeImage(File(fileList[i]).readAsBytesSync());
    copyInto(mergedImage, img, dstX: 100 * i, dstY: 100 * i);
  }

  // Save the thumbnail as a PNG.
  File('thumbnail.png')..writeAsBytesSync(encodePng(mergedImage));
}
