import 'dart:async';

/**
 * Observables en dart
 * no almacenar en una constante
 */

void main() {
  final streamCtrl = StreamController<String>();

  // subscripción a un stream
  streamCtrl.stream.listen((data) {
    print('Depegando $data');
  }, onError: print);

  // emitir algo a un stream
  streamCtrl.sink.add('Apolo 11');
  streamCtrl.sink.add('Apolo 12');
  streamCtrl.sink.addError('Mey dey....! - Error en lanzamiento');

  Future<String> myFuture =
      Future.delayed(Duration(seconds: 3), (() => 'Apolo 12'));
  myFuture.then((value) {
    streamCtrl.sink.add(value);
  });

  print('fin del main');
}
