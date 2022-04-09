
import 'person.dart';

class Chef extends Person {

  
  List<String> _especiality = [];

  /**
   * TODO: los : en un constructor indica que antes que se instancie algo ejecute primero algo
   */
  Chef({ required String name, required String surname } ): super( 0, name ) {
    age = 15;
    this.name = name;
    this.surname = surname;
  }

  @override
  bool isAdult() {
    
    return (this.age > 18) ? true : false;
    
  }

}