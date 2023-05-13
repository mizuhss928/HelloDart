main() {
  var v1 = new Vector(1, 2);
  var v2 = new Vector(2, 3);
  var v3 = v1 + v2;
  print('x=${v3.x}, y=${v3.y}');
}

class Vector {
  final int x, y;

  Vector(this.x, this.y) ;

  // 演算子のオーバーライド（演算子の振る舞いとメソッドの処理を上書きする）
  // C++の演算子のオーバーライドと同じ
  // この例はベクトルの足し算と引き算を定義している
  // 強力な反面、不用意に使うと混乱を招くのでベクトルや行列計算等の数学的な処理を定義する以外はあまり使わない方がいい
  Vector operator +(Vector v) => Vector(x + v.x, y + v.y); // Vector + Vector
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y); // Vector - Vector
}