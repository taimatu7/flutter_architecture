class Counter {
  // メモリ上に保持するカウンターの値
  int value = 0;

  // Controllerから呼び出されるメソッド
  int increment() {
    return ++value;
  }
}
