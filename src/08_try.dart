main() {
  void errorFunc() {
    try {
      // throw Exceptionで意図的に例外を投げる
      throw Exception('例外です');
    } on Exception catch(e) {
      // 捕捉する型を指定するには on ~ catch を使う
      // eはException型
      print(e);
      // rethrowでtry-catch-finallyブロックの外に例外を投げ直すことができる（関数の外などで例外を捕捉する必要がある）
      rethrow;
    } finally {
      // finallyブロックは例外の有無に関わらず実行される。省略可能
      print('finally');
    }
  }

  // 例外捕捉するtry-catch文
  try {
    errorFunc();
  } catch (e, s) {
    // 型を指定しないcatchは、何型か分からない例外全てを捕捉する
    // catchに仮引数を2つ指定すると、2つ目にはStackTraceオブジェクトが渡される
    print(s);
  }
}