import 'dart:ffi';

void main(){

  //maps can store data of various types
  //along with that it can store elements in (Key,Value) pair [KEYS are unique] Keys are case sensitive
  //dynamic in size

  List<Map<String,int>> grades = [
    {"Ayo" : 55, "Samuel" : 54,"Rio" : 45},
    {"Ayo" : 50, "Samuel" : 44,"Rio" : 35},
    {"Ayo" : 75, "Samuel" : 84,"Rio" : 40}
  ];

  int sum = 0;

  for (var element in grades) {
    element.forEach((key, value) {
      if(key == "Rio"){
        sum+=value;
      }
    });
  }

  print("Rio got: $sum ");

  var map_name = {
    "Key1": "Value1",
    "Key2": 2,
    "Key3": 5.5,
    "Key4": true,
  };

  print(map_name);
  print(map_name["Key2"]);
  print("${map_name.containsValue(5)}");















}