abstract class Person {

  String? name;
  String? surname;
  late int age;

  bool isAdult();

  Person( int age, String name ){
    this.name = name;
  }

}