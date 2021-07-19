// sound null safety: by default types cannot be null

class Person implements Animal{
  // _ (underscore) to make a field private (visible within the file the class is defined)
  late String _name; // is not nullable but promise to give it value at run time
  // int? _age; // nullable variable
  late int _age;
  late String _title;

  Person(String name, String title, int age){
    _name = name;
    _title = title;
    _age = age;
  }

  // Person({required this.name, this.age}); // short way for using "late"

  // getter with some modification
  String get name => _title + _name;
  
  // setters mainly used for validation
  set age(int i){
    _age = i < 0? 18: i;
  }
  int get age => _age;

  void greet(){
    print("Hi! I'm $_name");
  }

  @override // implement all methods in Animal interface
  void bark() {
    // TODO: implement bark
  }
}

// abstract class to be extended
// abstract class Animal {
//   void bark(){}
// }
// interface to be implemented 
class Animal {
  void bark(){}
}