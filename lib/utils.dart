import 'package:file_chooser/file_chooser.dart';
import 'package:image/image.dart';
import 'dart:async';
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

Future<List<FileSystemEntity>> dirContents(String dirStr) async {
  var files = <FileSystemEntity>[];
  final dir = new Directory(dirStr);
  final exist = await dir.exists();

  if (!exist) {
    return files;
  }
  var completer = Completer<List<FileSystemEntity>>();
  var lister = dir.list(recursive: false);
  lister.listen((file) => files.add(file),
      // should also register onError
      onDone: () => completer.complete(files));
  return completer.future;
}
