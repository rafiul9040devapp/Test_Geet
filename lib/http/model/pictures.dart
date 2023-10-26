class Picture {
  final String large;
  final String medium;
  final String thumbNail;

  Picture({
    required this.large,
    required this.medium,
    required this.thumbNail,
  });

  factory Picture.fromMap(Map<String, dynamic> json) {
    return Picture(
        large: json["large"],
        medium: json["medium"],
        thumbNail: json["thumbnail"]);
  }
}
