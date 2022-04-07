import 'classes/persona.dart';

void main() {
  final william = Persona.person30('William');

  // william..name = 'william'
  // william.age = 28;
  william.bio = 'Radicado en lima Perú';

  print('persona ${william.toString()}');
}
