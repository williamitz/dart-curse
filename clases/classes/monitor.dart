class Monitor {

  // instancia de mi clase
  static final _instace = new Monitor._();

  String country = 'Perú';
  String code = 'PER'; 

  //factory
  factory Monitor() {
    return _instace;
  }

  // constructor privado
  Monitor._();

}