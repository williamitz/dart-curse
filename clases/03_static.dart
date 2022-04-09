void main() {

  final util = Util();

  print(util.toString());
  
  // Util.utils.add('Lorem');
  Util.printer();

}

class Util {

  /**
   * TODO: las propiedas o métodos estáticos en una clase
   * se utilizan solo de mnodo lectura y forman parte de la clase
   * siempre de la mano del maptrón singleton
   */

  static const List<String> utils = ['Martillo', 'Desarmador', 'Alicate'];

  static void printer() => utils.forEach(print);

}
