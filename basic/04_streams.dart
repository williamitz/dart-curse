import 'dart:async';

void main() {
  // el broadcast permite subscribirse multiples veces en mi app
  final streamCtrl = StreamController<String>.broadcast();

  // listen to equivalent subscribe
  streamCtrl.stream.listen((event) {
    print('Despegando $event...');
  },
      onError: (err) => print('Error $err'),
      onDone: () => print('Despegues finalizados...'),
      cancelOnError: false);


       streamCtrl.stream.listen((event) {
    print('Despegando $event...');
  },
      onError: (err) => print('Error $err'),
      onDone: () => print('Despegues finalizados...'),
      cancelOnError: false);

  // equivalent emit (emitir data al stream)
  streamCtrl.sink.add('Apolo 11');
  streamCtrl.sink.add('Apolo 12');
  streamCtrl.sink.add('Apolo 13');
  streamCtrl.sink.addError('Hiuston, tenemos un problema!!!');

  streamCtrl.sink.close();

  print('Final del main');
}
