import 'package:flutter_architecture/model/counter.dart';

class CounterScreenController {
  final _count = Counter();

  // Viewから呼び出されるメソッド
  int increment() {
    return _count.increment();
  }
}
