// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../model/User.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();

  CustomUser? _userFromFirebaseUser(User user) {
    return (user != null) ? CustomUser(uid: user.uid) : null;
  }

  Stream<CustomUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!));
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return e.message;
    }
  }

  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return e.message;
    }
  }

  Future signOutApp() async {
    try {
      return await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future googleSignOutApp() async {
    try {
      return await googleSignIn.signOut();
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future resetPassword(String email) async {
    try {
      return _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInWithGoogle() async {
    try {
      final googleAccount = await googleSignIn.signIn();
      if (googleAccount != null) {
        final googleAuth = await googleAccount.authentication;
        if (googleAuth.accessToken != null && googleAuth.idToken != null) {
          try {
            //credential will be id token and access token
            return await _auth.signInWithCredential(
                GoogleAuthProvider.credential(
                    idToken: googleAuth.idToken,
                    accessToken: googleAuth.accessToken));
          } on FirebaseAuthException catch (e) {
            print(e.toString());
            return null;
          }
        }
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
