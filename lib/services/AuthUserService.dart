import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todo_list/entities/AuthUser.dart';

class AuthUserService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<AuthUser> auth(AuthUser user) async {
    print(user.toJson());
    UserCredential userCredential;

    try {
      userCredential = await this._auth.signInWithEmailAndPassword(
          email: user.email,
          password: user.password
      );
    } catch (e) {
      userCredential = await this._auth.createUserWithEmailAndPassword(
          email: user.email,
          password: user.password
      );
    }

    user.setUid = userCredential.user.uid;
    return user;
  }
}
