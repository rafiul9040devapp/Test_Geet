import 'package:test_geet/http/model/date_of_birth.dart';
import 'package:test_geet/http/model/location.dart';
import 'package:test_geet/http/model/login.dart';
import 'package:test_geet/http/model/pictures.dart';
import 'package:test_geet/http/model/register.dart';
import 'package:test_geet/http/model/user_id.dart';
import 'package:test_geet/http/model/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final Location location;
  final Login login;
  final DateOfBirth dob;
  final Registered registered;
  final ID id;
  final Picture picture;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.location,
    required this.login,
    required this.dob,
    required this.registered,
    required this.id,
    required this.picture,
  });

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName.fromMap(e["name"]);
    final location = Location.fromMap(e["location"]);
    final id = ID.fromMap(e["id"]);
    final picture = Picture.fromMap(e["picture"]);
    final registered = Registered.fromMap(e["registered"]);
    final dob = DateOfBirth.fromMap(e["dob"]);
    final login = Login.fromMap(e["login"]);
    return User(
      gender: e["gender"],
      email: e["email"],
      phone: e["phone"],
      cell: e["cell"],
      nat: e["nat"],
      name: name,
      location: location,
      login: login,
      dob: dob,
      registered: registered,
      id: id,
      picture: picture,
    );
  }
  String get fullName {
    return " ${name.title} ${name.first} ${name.last}";
  }
}
