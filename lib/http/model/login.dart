class Login {
  final String uuid;
  final String loginUserName;
  final String password;
  final String salt;
  final String md5;
  final String sha1;
  final String sha256;

  Login({
    required this.uuid,
    required this.loginUserName,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  factory Login.fromMap(Map<String, dynamic> json) {
    return Login(
        uuid: json["uuid"],
        loginUserName: json["username"],
        password: json["password"],
        salt: json["salt"],
        md5: json["md5"],
        sha1: json["sha1"],
        sha256: json["sha256"]);
  }
}
