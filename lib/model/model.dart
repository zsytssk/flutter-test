import '../utils/event.dart';

class TestModel with Event {
  int count = 0;
  increment() {
    count++;
    this.emit('test');
  }
}
