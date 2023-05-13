import '09_class.dart';
import '10_constClass.dart';
import '12_abstract.dart';

main() {
  // Masterクラスのインスタンスを生成
  var master = new Master('Master');
  print(master.commit('ToDo List'));
  // Masterインタフェースを実装したBranchクラスのインスタンスを生成
  var branch = new Branch();
  print(branch.commit('sort'));

  var director = new Director('Tanaka', 'Saburo');
  director.hello();
  director.story();
}

// Dartには interface キーワードが存在しませんが、
// クラスを宣言した時点でそのクラスと同じAPIのinterfaceが自動的に作成されます（暗黙的なinterface）
// Masterクラスの宣言であり、commit()メソッドを持ったMasterインタフェースの実装でもある
class Master {
  // privateなものはインタフェースに含まれない
  final _name;

  // コンストラクタもインタフェースには含まれない
  Master(this._name);

  String commit(String msg) => '${_name} commit ${msg}';
  // このメンバ関数の宣言のみインタフェースに含まれる（実装は含まれない）
  // String commit(String msg);
}

// implementsでMasterインタフェースを実装する
class Branch implements Master {
  // privateメンバ変数に関してはゲッターの実装が必須
  get _name => '';

  // メンバ関数（今回はcommit）の実装が必須
  String commit(String msg) => 'Branch commit ${msg}';
}

// extendsの親クラスは1つしか指定できないのに対し、implementsは複数指定できる（Javaと一緒）
// 抽象クラスもimplementsできる
class Director extends Person implements Animal, Point {
  // Personのコンストラクタを継承
  Director(String firstName, String lastName): super(firstName, lastName);

  // Animalのメンバ変数
  @override
  void hello() {
    print('I am Director');
  }

  // Pointのゲッター実装
  @override
  int get x => x;

  @override
  int get y => y;

  // Director独自のメンバ関数
  void story() {
    print('Yes we can');
  }

}