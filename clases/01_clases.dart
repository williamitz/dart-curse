import 'classes/persona.dart';

void main() {
  final william = Persona(name: 'william', age: 28);

  // william..name = 'william'
  // william.age = 28;
  william.bio = 'Radicado en lima Perú';

  print('persona ${william.toString()}');
}
