import 'package:my_app/utils.dart';

enum FontType { XML, TEXT }

class Model {
  List<String> fileList = [];
  int fontSize;
  FontType fontType = FontType.TEXT;
  int space;
  setFontType(FontType fontType) {
    print(fontType);
    this.fontType = fontType;
  }

  uploadFile() async {
    final files = await pickOpenFiles();
    if (files.length > 0) {
      for (final file in files) {
        fileList.add(file);
      }
    }
  }

  onCombine() {
    combine(fileList);
  }
}
