
void main() {
  //maps can store data of various types
  //along with that it can store elements in (Key,Value) pair [KEYS are unique] Keys are case sensitive
  //dynamic in size

  List<Map<String, int>> grades = [
    {"Ayo": 55, "Samuel": 54, "Rio": 45},
    {"Ayo": 50, "Samuel": 44, "Rio": 35},
    {"Ayo": 75, "Samuel": 84, "Rio": 40}
  ];

  int sum = 0;

  for (var element in grades) {
    element.forEach((key, value) {
      if (key == "Rio") {
        sum += value;
      }
    });
  }
  print("Rio got: $sum ");

  Map<String, int> totalSum = {};

  for (var gradeMap in grades) {
    for (var element in gradeMap.entries) {
      var key = element.key;
      var value = element.value;

      // totalSum[key] ??= 0;
      // totalSum[key] += value;

      if (totalSum.containsKey(key)) {
        //?? seems like if condition acts like ternary operator with null safety
        totalSum[key] = totalSum[key]??0 + value;
      } else {
        totalSum[key] = value;
      }
    }
  }

  print("$totalSum");

  var mapName = {
    "Key1": "Value1",
    "Key2": 2,
    "Key3": 5.5,
    "Key4": true,
  };

  print(mapName);
  print(mapName["Key2"] = false);
  print("${mapName.containsValue(5)}");
  print(mapName);

  mapName.remove("Key4");
  print("$mapName");
  print("${mapName.length}");
  print("${mapName.isNotEmpty}");
  print("${mapName.isEmpty}");
  print("${mapName.keys}");
  print("${mapName.values}");
  print("${mapName.containsKey("Key4")}");
  print("${mapName.containsKey(5.5)}");


}
