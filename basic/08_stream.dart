import 'dart:async';

/**
 * Observables en dart
 * no almacenar en una constante
 */

void main() {
  final streamCtrl = StreamController<String>.broadcast();

  /**
   * subscripción a un stream
   * cancelOnError determina si queremos dejar de escuchar el stream cuando ocurre algún problema
   * onDone función que se dispara al cerrar el stream
   * para permitir que el stream pueda ser escuchado en más de un lugar debemos agregar el broadcast, 
   * o cerrar la susbscripción antes de
   */
  streamCtrl.stream.listen((data) => print('Depegando $data'),
      onError: print, 
      cancelOnError: false,
      onDone: () => print('Mision completada!!!')
      );

  streamCtrl.stream.listen((data) => print('Depegando $data'),
  onError: print, 
  cancelOnError: false,
  onDone: () => print('Mision completada!!!')
  );

  // emitir algo a un stream
  streamCtrl.sink.add('Apolo 11');
  streamCtrl.sink.add('Apolo 12');
  streamCtrl.sink.addError('Mey dey....! - Error en lanzamiento');

  Future<String> myFuture =
      Future.delayed(Duration(seconds: 3), (() => 'Apolo 12'));
  myFuture.then((value) {
    streamCtrl.sink.add(value);
    // dejar de escuchar el stream
    streamCtrl.sink.close();
  });


  print('fin del main');
}
