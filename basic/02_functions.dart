main() {
  saludo('William');
  hello_wordl( 1, name: '' );
}

// función con argumentos posicionales
void saludo(String name, [int? age = 5] ) { // especificar un argumento opcional con []
  print('Hola mundo: $name \nEdad: $age');
}

// si un argumento no es requeido toma el valor nulo
void hello_wordl( int veces, {required String name, int age = 10,  }) {
  print('Hola mundo: $name \nEdad: $age \nVeces: $veces');
}
