import 'dart:io';

void main() {
  print("Enter the Year");
  var year = 2020;

  if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
    print("$year is a Leap Year");
  } else {
    print("$year is Not a Leap Year");
  }

  //null safety

  bool? isAdmin;
  String taste = "Pizza";

  if (taste == "Pizza") {
    isAdmin = true;
  }
  if (isAdmin!) {
    print("Tasty");
  }
  fetchUserOrder();
  print("Fetching user order...");
}

Future<void> fetchUserOrder()  {
  return  Future.delayed(
       Duration(seconds: 1), () => print("Lemon Ice Tea"));
}
