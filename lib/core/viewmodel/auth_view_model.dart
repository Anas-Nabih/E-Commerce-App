import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerse_app_uising_getx/core/services/user_fireStor.dart';
import 'package:e_commerse_app_uising_getx/model/user_model.dart';
import 'package:e_commerse_app_uising_getx/res/storge/preference/prefs.dart';
import 'package:e_commerse_app_uising_getx/view/auth/login_view.dart';
import 'package:e_commerse_app_uising_getx/view/main_screens/main_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);
  FacebookLogin _facebookLogin = FacebookLogin();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  RxString userName = "".obs;
  RxString email = "".obs;
  RxString password = "".obs;

  RxBool visiblePassword = true.obs;

  signInWithGoogle() async {
    final GoogleSignInAccount _googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await _googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    await _auth.signInWithCredential(credential).then((user) async => saveUser(userCredential: user));
    Get.offAll(()=>MainView());
  }

  signInWithFacebook() async {
    FacebookLoginResult result = await _facebookLogin.logIn(["email"]);
    final accessToken = result.accessToken.token;

    if (result.status == FacebookLoginStatus.loggedIn) {
      final facebookCredential = FacebookAuthProvider.credential(accessToken);
      await _auth.signInWithCredential(facebookCredential).then((user) async => saveUser(userCredential: user));
     }
  }

  signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email.value, password: password.value);
      Prefs.setIsLogin(true);
      Get.offAll(() => MainView());
    } catch (e) {
      Get.snackbar(
        "Error login account",
        e.message,
      );
      print(e.message);
    }
  }

  createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
              email: email.value, password: password.value)
          .then((user) async => saveUser(userCredential: user));
      Prefs.setIsLogin(true);
      Prefs.setUserName(userName.value);
      Get.offAll(() => MainView());
    } catch (e) {
      Get.snackbar(
        "Error login account",
        e.message,
      );
      print(e.message);
    }
  }

  signOut() {
    _auth.signOut();
    Prefs.setIsLogin(false);
    Get.offAll(() => LoginView());
  }

  deleteUser() async {
    final collection =
        await FirebaseFirestore.instance.collection("user").get();
    final batch = FirebaseFirestore.instance.batch();

    for (final doc in collection.docs) {
      batch.delete(doc.reference);
    }

    return batch.commit();
  }

  void saveUser({UserCredential userCredential}) async {
    await FireStoreUser().addUserToFireStore(UserModel(
      userId: userCredential.user.uid,
      email: userCredential.user.email,
      image: userCredential.user.photoURL,
      name: userName.value == "" ? userCredential.user.displayName : userName.value,
    ));

    Prefs.setCurrentUser(jsonEncode(UserModel(
      userId: userCredential.user.uid,
      email: userCredential.user.email,
      image: userCredential.user.photoURL,
      name: userName.value == "" ? userCredential.user.displayName : userName.value,
    ).toJson()));

  }
}
