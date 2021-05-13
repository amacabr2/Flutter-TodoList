class AuthUser {
  String uid;

  final String email;

  final String password;

  AuthUser({this.uid, this.email, this.password});

  set setUid(value) => this.uid = value;

  factory AuthUser.fromForm(Map<String, dynamic> form) => AuthUser(
    email: form['email'],
    password: form['password'],
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'uid': this.uid,
    'email': this.email,
    'password': this.password,
  };
}
