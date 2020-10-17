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
}
