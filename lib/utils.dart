// import 'package:file_picker/file_picker.dart';
import 'package:file_chooser/file_chooser.dart';
import 'package:image/image.dart';
import 'dart:io';

pickFiles() {
  return showOpenPanel(
    allowsMultipleSelection: true,
    allowedFileTypes: [
      FileTypeFilterGroup(label: 'image', fileExtensions: ['png', 'jpg']),
    ],
    confirmButtonText: 'haha',
  ).then((val) {
    return val.paths;
  });
}

combine(List<String> fileList) {
  final mergedImage = Image(500, 500);
  for (int i = 0; i < fileList.length; i++) {
    final img = decodeImage(File(fileList[i]).readAsBytesSync());
    copyInto(mergedImage, img, dstX: 100 * i, dstY: 100 * i);
  }

  File('./thumbnail.png')..writeAsBytesSync(encodePng(mergedImage));
}
