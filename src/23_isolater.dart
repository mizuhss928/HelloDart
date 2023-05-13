import 'dart:io';
import 'dart:isolate';

main() async {
  final receivePort = ReceivePort();
  final sendPort = receivePort.sendPort;
  // アイソレータ（スレッド処理）を実行
  await Isolate.spawn(isolate, sendPort);
  // アイソレータの結果待ち
  receivePort.listen((msg) {
    print('message from another Isolate: $msg');
    exit(0); // main関数を終了する
  });
}

// スレッド処理
void isolate(sendPort) {
  for(int i = 0; i < 10; i++) {
    print('waiting: $i');
  }
  // 呼び出し元に結果を送信する
  sendPort.send('finished!');
}