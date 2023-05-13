main() {
  const p = Point(1, 2);
  print('x=${p.x}, y=${p.y}');
  var pp = Point.alongXAxis(3);
  print('x=${pp.x}, y=${pp.y}');
}

class Point {
  final int x;
  final int y;

  // 不変コンストラクタ
  // メンバ変数が全部 final 宣言されているとコンストラクタの頭にconstをつけられる
  // こん場合、インスタンス化された変数はコンパイル変数として扱われる
  const Point(this.x, this.y);

  // リダイレクトコンストラクタ
  // 別のコンストラクタに一部処理を移譲する
  const Point.alongXAxis(int x): this(x, 0);
}