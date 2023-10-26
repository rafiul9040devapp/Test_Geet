class Registered {
  final String date;
  final int age;

  Registered({
    required this.date,
    required this.age,
  });

  factory Registered.fromMap(Map<String, dynamic> json) {
    return Registered(date: json["date"], age: json["age"]);
  }
}
