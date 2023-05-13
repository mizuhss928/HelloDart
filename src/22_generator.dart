main() async {
  // 同期ジェネレータ、JavaScriptのジェネレータとほぼ同じ、Iterable<データ型>で戻り値を返却する必要がある
  // yieldの値が順次返却される
  Iterable<int> countIterator(int n) sync* {
    int k = 1;
    while (k <= n) {
      yield k++;
    }
  }
  var iterator = countIterator(3);
  iterator.forEach((value) {
    print(value);
  });

  print('-----');

  // 非同期ジェネレータ、JavaScriptのジェネレータ、Rxのストリームに近い、Stream<データ型>で戻り値を返す必要がある
  // yieldの値が順次返却される
  Stream<int> countStream(int to) async* {
    for (int i = 1; i <= to; i++) {
      yield i;
    }
  }

  var stream = countStream(3);
  // Streamの同期待ちにはawait forを使う。yieldの結果を順次取り出すイメージ
  await for (var value in stream) {
    print(value);
  }

  print('-----');

  var stream2 = countStream(3);
  // Streamの結果を非同期で受け取るにはlistenで結果を待つ
  stream2.listen((value) {
    print(value);
  });
}