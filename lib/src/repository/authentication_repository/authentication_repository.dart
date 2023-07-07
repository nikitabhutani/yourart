import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yourart/src/repository/authentication_repository/exception/signup_email_password_failure.dart';
import 'package:yourart/src/screens/mobilescreenlayout.dart';
import 'package:yourart/src/screens/signin.dart';
import 'package:yourart/src/screens/signup.dart';
import 'package:yourart/src/screens/welcomescreen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream((_auth.userChanges()));
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.off(() => WelcomeScreen())
        : Get.offAll(() => MobileScreenLayout());
  }

  Future<void> createUserWithEmailAnsPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.off(() => MobileScreenLayout())
          : Get.to(() => WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION-${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION-${ex.message}');
      throw ex;
    }
  }

  Future<String> loginWithWithEmailAnsPassword(
      String email, String password) async {
    String res = "some Error Occured";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } on FirebaseAuthException catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<void> logout() async => await _auth.signOut();
}
