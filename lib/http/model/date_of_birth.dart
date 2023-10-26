class DateOfBirth {
  final DateTime date;
  final int age;

  DateOfBirth({
    required this.date,
    required this.age,
  });

  factory DateOfBirth.fromMap(Map<String, dynamic> json) {
    final date = json["date"];
    return DateOfBirth(date: date, age: json["age"]);
  }
}
