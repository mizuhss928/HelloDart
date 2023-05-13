main() async {
  // 非同期関数（async）、Future<データ型>で戻り値を返却する必要がある
  // JavaScriptのPromise関数とほぼ同じ
  Future<String> lookUpVersion() async => '1.0.0';
  var version = await lookUpVersion(); // awaitで同期待ち（async関数内でのみ使える）
  print(version);
}