class ID {
  final String name;
  final String value;

  ID({
    required this.name,
    required this.value,
  });

  factory ID.fromMap(Map<String, dynamic> json) {
    return ID(name: json["name"], value: json["value"] ?? "");
  }
}
