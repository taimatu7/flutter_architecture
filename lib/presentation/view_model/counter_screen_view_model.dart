import 'package:flutter_architecture/model/counter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ViewModelを提供するProvider、画面で使用する
final counterScreenViewModelProvider =
    StateNotifierProvider<CounterScreenViewModel, int>(
        (ref) => CounterScreenViewModel());

// ViewModel、intのカウントター値を保持する
class CounterScreenViewModel extends StateNotifier<int> {
  final _counter = Counter();

  CounterScreenViewModel() : super(0);

  void increment() {
    // Modelのincrementメソッドを呼び出して、ViewModelで保持している値を更新する→画面が更新される
    state = _counter.increment();
  }
}
