main() {
  // ジェネリクスのインスタンス化は型を指定する
  var cache = new Cache<String>();
  cache.setByKey('key', 'test');
  print('key=${cache.getByKey('key')}');

  // メソッドのジェネリクス
  // 型の制限をするときは型のextendsを使う
  T sum<T extends num>(List<T> list, T init) {
    T sum = init;
    list.forEach((value) {
      sum = (sum + value) as T;
    });
    return sum;
  }

  int r1 = sum<int>([1, 2, 3], 0);
  print(r1);
  // 型指定しない場合は左辺の型に暗黙的に型変換される
  double r2 = sum([1.1, 2.2, 3.3], 0.0);
  print(r2);
}

// 型だけが違う実装をしたクラスを実装したい場合はジェネリクスを使うと便利
// インスタンス化するときにTに型を指定する
class Cache<T> {
  Map<String, T> store = <String, T>{};

  T? getByKey(String key) {
    return this.store[key];
  }

  void setByKey(String key, T value) {
    this.store.addAll(<String, T>{key: value});
  }
}