## 基本类型

## async

```dart
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'You order is: $order';
}

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => 'Zsy');
}

void main() async {
  print(await createOrderMessage());
}

```

## 类型定义

```dart
typedef Compare = int Function(Object a, Object b);
```
