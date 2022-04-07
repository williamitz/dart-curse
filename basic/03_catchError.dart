void main() {
  Future<String> delay = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) throw 'Excepción controlada';

    return 'Retorno del rey';
  });

  delay.then(print).catchError(print);

  print('final del main');
}
