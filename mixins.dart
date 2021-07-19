// mixins: use "with" keyword

class Walkers{
  void walk(){
    print("Walking...");
  }
}

class Person with Walkers{

}

class Dog with Walkers {
  
}

main(List<String> args) {

  Walkers p = new Person();
  Walkers d = new Dog();

  p.walk();
  d.walk();
  
}