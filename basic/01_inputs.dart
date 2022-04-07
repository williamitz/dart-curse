import 'dart:io';

main() {

  stdout.writeln('Ingrese nombre');

  String name = stdin.readLineSync() ?? 'no value';

  print('Mo name is: $name');  

}
