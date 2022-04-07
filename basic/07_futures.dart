void main() {
  /**
   * Los futures son promesas(javascript)
   */

  Future<String> timeout = Future.delayed(Duration(seconds: 2), () {
    if (1 == 1) {
      throw 'Auxilio!';
    }
    print('3 seconds ...');
    return 'Retorno :D';
  });

  timeout.then((value) => print(value)).catchError(print);

  print('init....');
}
