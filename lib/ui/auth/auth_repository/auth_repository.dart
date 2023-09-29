import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  Future<void> signUp({required String email, required String password}) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('This password is too week');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exits for that email');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  Future<void> signIn({required String email, required String password}) async {
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('This password is too week');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exits for that email');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  Future<void> LogOut() async {
    try {
      FirebaseAuth.instance.signOut();
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('This password is too week');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exits for that email');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
