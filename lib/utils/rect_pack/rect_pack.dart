import 'dart:math' as Math;
import 'packer_growing.dart';

class Item<T> {
  int width;
  int height;
  T item;
  Item({
    this.width,
    this.height,
    this.item,
  });
}

rectPack(List<Item> items) {
  var packer = new GrowingPacker();

  // Clone the items.
  var newItems = items.map((item) {
    return Root(width: item.width, height: item.height, item: item);
  }).toList();

  newItems.sort((a, b) {
    // Sort based on the size (area) of each block.
    return (b.width * b.height).compareTo(a.width * a.height);
  });

  packer.fit(newItems);

  var w = newItems.fold(0, (int curr, item) {
    return Math.max(curr, item.x + item.width);
  });
  var h = newItems.fold(0, (int curr, item) {
    return Math.max(curr, item.y + item.height);
  });

  return {'width': w, 'height': h, 'items': newItems};
}
