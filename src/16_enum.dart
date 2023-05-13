main() {
  var c = Color.blue;
  print(Color.green.index == 1);

  // 列挙型はswitchの条件分岐に使える
  switch(c) {
    case Color.green:
      print('green');
      break;
    case Color.blue:
      print('blue');
      break;
    case Color.red:
      print('red');
      break;
    default:
  }
}

// 列挙型
// 列挙子は宣言された順にインデックス（0始まり）が割り振られていて、index で参照できる。
// enumを継承できなかったり（mixinにも使えない）、enumのインスタンスを自前で生成できない（定数のみでしか使えない）
// 実装を持つことができない以外、Javaとほぼ同じ
enum Color {red, green, blue}