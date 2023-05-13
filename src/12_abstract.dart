main() {
  // abstractクラスはインスタンス化できない
  // var animal = new Animal();
  var animal = new Cat();
  animal.hello();
}

// 抽象クラス
// 処理未定義のメンバ変数を持つクラス、インスタンス化できない
abstract class Animal {
  void hello();
}

// 抽象クラスを継承して未定義メンバ関数を実装する
class Cat extends Animal {
  @override
  void hello() {
    print('みゃお');
  }
}