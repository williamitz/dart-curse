// UpperCamelCase
class Persona {
  // campos y propiedades

  String _nombre = '';
  int _edad = 0;
  String _bio = '';

  // getters y setters

  set name(String val) {
    _nombre = val;
  }

  set age(int val) {
    _edad = val;
  }

  set bio(String val) {
    _bio = val;
  }

  String get name => _nombre;
  int get age => _edad;
  String get bio => _bio;

  // palabra reservada que indicar sobreescribir algo
  @override
  String toString() => 'Hola $name - $age - $bio';

  // constructores

  // constructor por defecto
  // argumentos posicional
  // Persona(String name) {
  //   this.name = name;
  // }

  // argumentos por nombre
  Persona({int age = 5, required name}) {
    this.name = name;
    this.age = age;
  }

  // métodos
}
