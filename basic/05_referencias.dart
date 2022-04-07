void main() {
  String name = 'william';

  // al usar referencias de argumentos con valores primitivos, no se mantiene la referencia en memoria
  String name2 = capitalizar(name);

  Map<String, String> heroe = {'name': 'Tony Stark'};

  Map<String, String> heroe2 = captain(heroe);

  // al usar no primitivos (map, list, Enum, Objects) la referencia siempre se mantiene en memoria
  // intentar romper las referencias
  print(heroe);
  print(heroe2);
}

String capitalizar(String val) => val.toUpperCase();

Map<String, String> captain(Map<String, String> val) {
  val = {...val};

  val['name'] = val['name']?.toUpperCase() ?? 'No hay nombre';

  return val;
}
