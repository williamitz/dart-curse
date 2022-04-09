import 'classes/chef.dart';

void main() {

  final chef1 = Chef(name: 'Piero Alvino', surname: 'Calle Quintero');
  chef1.age = 22;

  print('Es un adulto? ${chef1.isAdult()}');
  print('Es un adulto? ${chef1.name}');
  
}