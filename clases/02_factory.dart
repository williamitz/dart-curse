
class Figure {

  int base = 0;
  int altura = 0;
  int area = 0;
  String tipo = '';


  /**
   * TODO: un constructor factory es un inicializador que debe retornar una nueva instancia
   * ideal para realizar cálculos o instrucciones
   */
  factory Figure( int base, int altura ){
    
    if( base == altura )
      return Figure.squeare(base: base);
    
    return Figure.rectangle(base: base, altura: altura);
  }

  Figure.squeare( {required int base} ) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Figure.rectangle( {required int base, required int altura} ) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }

  @override
  String toString() {
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo }.toString();
  }
}

void main() {
  final figura = Figure(10, 20);
  print(figura.toString());
}