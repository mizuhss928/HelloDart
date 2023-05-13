main() {
  // sort関数をtypedefで定義した型で格納
  Compare<int> sortFunc = sort;
  print('sort: ${sortFunc(1, 2)}');
}

// typedefで関数の別名（型）を定義できる
typedef Compare<T> = T Function(T a, T b);
int sort(int a, int b) => a - b;