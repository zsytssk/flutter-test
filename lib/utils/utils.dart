import 'package:file_chooser/file_chooser.dart';
import 'package:image/image.dart';
import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:convert';

import 'package:my_app/utils/rect_pack/rect_pack.dart';
import 'package:my_app/utils/toXml.dart';

import '../model.dart';

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

combine(Model model) async {
  final space = model.space;

  List<Item> imgList = [];
  for (final file in model.fileList) {
    final img = decodeImage(File(file.path).readAsBytesSync());
    imgList.add(Item(
        item: {'img': img, 'file': file},
        width: img.width + space,
        height: img.height + space));
  }
  final rect = rectPack(imgList);
  List<XMLItem> items = [];
  final Image mergedImage = Image(rect['width'], rect['height']);
  for (final rectItem in rect['items']) {
    final item = rectItem.item.item;
    items.add(XMLItem(
        id: item['file'].charcode,
        x: rectItem.x,
        y: rectItem.y,
        width: rectItem.width,
        height: rectItem.height));

    copyInto(mergedImage, item['img'], dstX: rectItem.x, dstY: rectItem.y);
  }

  final filenames = (await pickSaveFile());

  if (filenames == null) {
    return;
  }

  final filePath = filenames[0];
  final dir = dirname(filePath);
  final filename = basenameWithoutExtension(filePath);

  final xml = genXml(
      items: items,
      fontSize: model.fontSize,
      spacing: model.space,
      width: rect['width'],
      height: rect['height'],
      fileName: filename);

  final imgPath = join(dir, '$filename.png');
  final xmlPath = join(dir, '$filename.fnt');
  File(imgPath).writeAsBytesSync(encodePng(mergedImage));
  File(xmlPath).writeAsBytesSync(utf8.encode(xml));
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
