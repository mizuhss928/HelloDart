main() {
  // 文字列置換
  var str = 'Dart Language';
  print(str.replaceAll('a', '@'));

  var address = '東京都港区 1-1-1';
  // 正規表現でマッチする全てを取得する
  Iterable<Match> matches = new RegExp('.?区').allMatches(address);
  for (Match m in matches) {
    print(m.group(0));
  }

  // 改行を含んだ文字列をリテラルで表現するには'''で囲う
  var multiline = '''
改行
しました
''';
  print(multiline);
}