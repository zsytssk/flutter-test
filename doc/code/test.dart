import './event.dart';
import 'dart:math' as math;

Stream<int> timedCounter(Duration interval, [int maxCount]) async* {
  int i = 0;
  while (true) {
    await Future.delayed(interval).then((_) {});
    yield ++i;
    if (i == maxCount) break;
  }
}

main() async {
  await for (var item in timedCounter(Duration(seconds: 1), 5)) {
    print(item);
  }
  // a.emit('test', 'hello world');
}
