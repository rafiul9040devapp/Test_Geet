void main() {
  //dart list is similar to Array which is ordered collection of objects
  var list = ["20", 50, 56.89, "Shammi", "Pappu"];
  list.add(true);

  //list printing
  print("$list");
  // for (var element in list) {
  //   print(element);
  // }

  //list with dynamic size
  var various = [];
  various.add("Gungun"); //it adds value at the end of the list
  various.add("BulBul");
  various.add(BigInt.parse("15441231641231641321641"));
  various.insertAll(1, list);
  various.insert(0, null); //it adds value at a particular index of the list
  // various.addAll(list);
  print("$various");

  various[4] = 89; //updating the value

  various.removeRange(0, 2);
  various.replaceRange(3, 6, ["Sumi", "Asif", "Ana de Armas", "45", false]);

  print("$various");
  print("Length: ${various.length}");
  print("Reversed: ${various.reversed}");
  print("First: ${various.first}");
  print("List: ${various.last}");
  print("Is Empty: ${various.isEmpty}");
  print("Is Empty Not: ${various.isNotEmpty}");

  //fetching data
  print("${various.elementAt(2)}");

  //removing data
  various.removeLast();
  various.removeAt(2);
  various.removeAt(2);
  various.removeRange(0, 4); //going to remove before the end
  print("$various");

  //sorting
  var variation = [];
  variation.addAll([15, 35, 25, 30, 10, 5]);
  print("$variation");

  variation.sort();
  print("$variation");

  List<num> variousNumbers = [];
  variousNumbers.addAll([5,2.5,545,4,.05,.214]);
  print("$variousNumbers");
}
