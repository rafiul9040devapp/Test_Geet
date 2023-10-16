import 'dart:io';

void main() {
  print("Welcome to DART");
  stdout.write("object");
  print("");

  //taking input from user
  // stdout.write("Enter Your Name:");
  // var name = stdin.readLineSync();
  // for (int i = 0; i <= 5; i++) {
  //   stdout.write(name);
  //   print("");
  // }

  //variable
  int a = 5; //non nullable
  int? b; //nullable and it can be null
  BigInt longValue;
  longValue = BigInt.parse("1234862164616349131");
  bool isLogin = false;
  num percentage = 99.5;
  double rippleValue = 500.5;

  stdout.write(a);
  print("");
  stdout.write(b);
  print("");
  print(longValue);

  //var
  //in the case of the var : after initializing the value the type is fixed
  //in the case of reassign of var the data type has to be same
  var value = 56;
  value = 67;
  print("value: $value");

  //var with dynamic concept
  //for using VAR as dynamic it should not initialized when declared
  dynamic fixed;

  fixed = 77;
  print("fixed: $fixed");

  fixed = "MAMU";
  print("fixed: $fixed");

  fixed = false;
  print("fixed: $fixed");

  //OOP Concepts
  var shafu = Bro();
  stdout.write(shafu);
  print("");

  //function calling
  MyClass().printName("Sharin");
  var myClass = MyClass();
  myClass.printName(69);

  print("Result: ${myClass.makeAddition(50, 5.5)}");
  print("Result: ${myClass.makeAddition(0.0012, -5.5)}");
  print("Result: ${myClass.makeAddition(23, .021457)}");

  //final vs const
  //final can help to change in the compile time where const can't....

  //you can't reassign the variable. mainly used for the Constant values
  //can't use var/dynamic in the final
  final String name;
  name = "Raju";

  final names = ["Ramin", "Samin", "Romin"];

  names.addAll(["Romzan", "Rakib", "Sakib", "Sujon"]);
  print(names);

  //it has to initialize INLINE and also can't reassign
  const int age = 54;

  //can't add any kind of the value in the list
  const rolls = [1, 2, 5, 7, 8];
  print(rolls);
}

class Bro {
  var name;
  var age;
  var nature;

  Bro();
}

class MyClass {
  //constructor is a special function that has same name as class name
  MyClass() {
    print("The object Of MyClass is Creaated");
  }

  void printName(var name) {
    //function declaration
    print(
        "Testing Purpose: $name"); //the body of the function is called Definition
  }

  num? makeAddition(num a, num b) {
    var result = a + b;
    return result;
  }
}
