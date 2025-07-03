import 'package:firebase_auth/firebase_auth.dart';

class Authservice {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signIn(String email,String password) async {
    final userCred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
     return userCred.user;
  }

  Future<User?> logIn(String email,String password) async {
    final userCred = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return userCred.user;
  }

  Future<void> signout() {
    return _auth.signOut();
  }
}
