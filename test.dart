// variables: const (constant), final(constant but can be assigned at runtime or compile time), var(can be changed once set), dynamic (can change data type)
// types: int, double, boolean, string
// conditionals: if-else, switch, ternary operator
// loops: for(int i = 0; i < ...), while loop, for-in loop
// functions: parameters
// classes
// inheritance
// mixins
// futures


import 'classes.dart';

main(List<String> args) {
  // print("hello world");
  // ** data types **
  const int i = 20;
  // i = 30;

  final int f; // does not necessarily have to be initialized at declaration

  var v = 1;
  v = 2;

  dynamic d = "string";
  d = 3;

  // ** common data structures: lists, maps, sets **
  final list = [1, 2, 3, true, "hello"]; // dynamic if not specified
  final List<int> nums = [1, 2, 3];
  nums.addAll(<int>[4, 5]);
  nums.remove(5);
  nums.removeAt(0); // index based

  // 'set' contains unique elements
  final unique = {1, 2, 3, 3};
  final Set<int> uniqueType = {1, 2, 3, 3};

  // map: like dictionaries in python. Key:value pairs
  final Map<String, int> map = {
    "level": 1,
  };
  // print(map.entries.toList());

  // ** conditionals: ternary operator(?) **
  final int age = 19;
  String ageGroup = age > 18? "Adult": "Minor";

  // ** loops: for-in **
  final numbers = [1, 2, 3];
  for (var number in numbers){
    // print(number);
  }

  // ** functions: function as object **
  Function fun = (int b, Function func){ // function, func, as parameter. function, fun, as object.
    func(b);
    return;
  };
  // fun(2, doSth);

  // namedParams(age: 21);

  // EXERCISE: sum of odds
  int start = 1, end = 6;
  int sum = sumOdd(start, end);
  // print("Sum of odds from $start to $end: $sum");

  // ** Classes **
  final Person p = Person("Someone", "Mr. ", 33);
  print(p.name);

}

// ** functions **
// first class membership: can be declared as variables/objects
// can be defined outside class, functions are treated as normal parameters
void doSth(int a){
  print("In doSth: " + a.toString());
  return;
}

// ** optional, required, named parameters **
// named parameters in curly braces
void namedParams({required int age, int expectedToLive = 60}){

}
// unnamed params are by default required

// optional parameters in square braces
void optionalParams(int a, [int maybe = 0]){

}

// EXERCISE: Sum of all odd numbers in between start and end, inclusive.
int sumOdd(int start, int end){
  int startOdd = start % 2 == 0? start + 1: start;
  int sum = 0;

  for (int i = startOdd; i <= end; i+=2){
    sum += i;
  }

  return sum;
}
