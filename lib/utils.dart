import 'package:file_chooser/file_chooser.dart';
import 'package:image/image.dart';
import 'dart:io';

pickFiles() async {
  // return await showOpenPanel(allowedFileTypes: [
  //   FileTypeFilterGroup(label: 'txt', fileExtensions: ['png'])
  // ]).catchError((err) => {print(err)});
  try {
    showSavePanel();
  } catch (e) {
    print(e);
  }
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
