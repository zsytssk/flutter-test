import 'package:file_chooser/file_chooser.dart';
import 'package:image/image.dart';
import 'dart:io';

pickOpenFiles() {
  return showOpenPanel(
    allowsMultipleSelection: true,
    allowedFileTypes: [
      FileTypeFilterGroup(label: 'image', fileExtensions: ['png', 'jpg']),
    ],
  ).then((val) {
    return val.paths;
  });
}

Future<List<String>> pickSaveFile() {
  return showSavePanel(
    allowedFileTypes: [
      FileTypeFilterGroup(label: 'image', fileExtensions: ['png', 'jpg']),
    ],
  ).then((result) => result.paths);
}

combine(List<String> fileList) async {
  final mergedImage = Image(500, 500);
  for (int i = 0; i < fileList.length; i++) {
    final img = decodeImage(File(fileList[i]).readAsBytesSync());
    copyInto(mergedImage, img, dstX: 100 * i, dstY: 100 * i);
  }

  final filenames = (await pickSaveFile());
  if (filenames != null) {
    File(filenames[0])..writeAsBytesSync(encodePng(mergedImage));
  }
}
