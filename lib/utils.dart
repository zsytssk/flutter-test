// import 'package:file_picker/file_picker.dart';
import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:image/image.dart';
import 'dart:io';

pickFiles() {
  if (Platform.isWindows) {
    final file_picker = OpenFilePicker()
      ..filterSpecification = {
        'Image (*.png; *.jpg)': '*.png;*.jpg',
      }
      ..defaultFilterIndex = 0
      ..defaultExtension = '*'
      ..title = 'Select a document';

    final file = file_picker.getFile();
    if (file == null) {
      return file;
    }
    return file.path;
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
