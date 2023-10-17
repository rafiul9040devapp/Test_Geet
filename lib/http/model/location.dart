class Location {
  final Street street;
  final String city;
  final String state;
  final String country;
  final String postCode;
  final Coordinates coordinates;
  final TimeZone timeZone;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postCode,
    required this.coordinates,
    required this.timeZone,
  });

  factory Location.fromMap(Map<String, dynamic> json) {
    return Location(
        street: Street.fromMap(json["street"]),
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postCode: json["postcode"].toString(),
        coordinates: Coordinates.fromMap(json["coordinates"]),
        timeZone: TimeZone.fromMap(json["timezone"])
    );
  }
}

class Street {
  final int streetNumber;
  final String streetName;

  Street({
    required this.streetNumber,
    required this.streetName,
  });

  factory Street.fromMap(Map<String, dynamic> json) {
    return Street(streetNumber: json["number"], streetName: json["name"]);
  }
}

class Coordinates {
  final String latitude;
  final String longitude;

  Coordinates({
    required this.latitude,
    required this.longitude,
  });

  factory Coordinates.fromMap(Map<String, dynamic> json) {
    return Coordinates(
        latitude: json["latitude"], longitude: json["longitude"]);
  }
}

class TimeZone {
  final String offset;
  final String description;

  TimeZone({
    required this.offset,
    required this.description,
  });

  factory TimeZone.fromMap(Map<String, dynamic> json) {
    return TimeZone(offset: json["offset"], description: json["description"]);
  }
}
