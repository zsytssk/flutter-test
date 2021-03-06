typedef Fun<T extends Object> = T Function({dynamic data});

class EventItem {
  dynamic caller;
  Fun<dynamic> callback;
  bool once;
  void Function() off;

  EventItem({this.caller, this.off, this.callback, this.once});
}
/** 每一个event的数据 */

/**
 * 事件订阅发布构造函数
 */
class Event {
  Map<String, Set<EventItem>> events = Map();

  /**
     * 注册监听
     * @param event
     * @param callback
     * @param caller
     */
  on(String event, Fun<dynamic> callback, {dynamic caller, bool once = false}) {
    Set<EventItem> events;
    if (this.events.containsKey(event)) {
      events = this.events[event];
    } else {
      events = new Set();
      this.events[event] = events;
    }

    for (final temp in events) {
      if (caller == temp.caller && callback == temp.callback) {
        return;
      }
    }
    final off = () {
      this.off(event, callback: callback, caller: caller);
    };

    events.add(
        EventItem(caller: caller, callback: callback, once: once, off: off));
  }

  once(String event, Fun<dynamic> callback, {dynamic caller}) {
    return this.on(event, callback, caller: caller, once: true);
  }

  getBind(String event) {
    return this.events[event];
  }

  /**
     * 取消监听，如果没有传 callback 或 caller，那么就删除所对应的所有监听
     * @param event
     * @param callback
     * @param caller
     */
  off(String event, {Fun<dynamic> callback, dynamic caller}) {
    if (!this.events.containsKey(event)) {
      return;
    }
    final events = this.events[event];
    for (final item in [...events]) {
      if (item.callback == callback && item.caller == caller) {
        events.remove(item);
        break;
      }
    }
  }

  offAllCaller(dynamic caller) {
    for (final events in this.events.values) {
      for (final item in [...events]) {
        if (item.caller == caller) {
          events.remove(item);
        }
      }
    }
  }

  /// 发布消息
  /// @event shi ji
  /// @data
  emit(String event, dynamic data) {
    if (this.events.containsKey(event)) {
      final events = this.events[event];
      for (final item in [...events]) {
        /** 防止在 遍历中 events被清理之后还继续执行
                 * for of 只能保证在触发循环时的每一个item都能遍历到
                 */
        if (!events.contains(item)) {
          continue;
        }

        if (item.callback is Fun<dynamic>) {
          item.callback(data: data);
        }
        if (item.once) {
          item.off();
        }
      }
    }
  }

  destroy() {
    this.events.clear();
  }
}
