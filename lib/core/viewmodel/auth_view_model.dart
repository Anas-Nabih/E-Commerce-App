import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerse_app_uising_getx/core/services/firestore_user.dart';
import 'package:e_commerse_app_uising_getx/helper/local_storge_data.dart';
import 'package:e_commerse_app_uising_getx/model/user_model.dart';
import 'package:e_commerse_app_uising_getx/view/controller_view.dart';
import 'package:e_commerse_app_uising_getx/view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FacebookLogin _facebookLogin = FacebookLogin();
  FirebaseAuth _auth = FirebaseAuth.instance;

  Rx<User> _user = Rx<User>();

  String get user => _user.value?.email;

  String email, password, name;

  final LocalStorageData localStorageData = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
    if (_auth.currentUser != null) {
      getCurrentUserData(_auth.currentUser.uid);
    }
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    print(googleUser);

    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    await _auth.signInWithCredential(credential).then((user) async {
      saveUser(user);
      Get.offAll(ControlView());
    });
  }

  void facebookSignInMethod() async {
    FacebookLoginResult result = await _facebookLogin.logIn(['email']);

    final accessToken = result.accessToken.token;

    if (result.status == FacebookLoginStatus.loggedIn) {
      final faceCredential = FacebookAuthProvider.credential(accessToken);
      await _auth.signInWithCredential(faceCredential).then((user) async {
        saveUser(user);
        Get.offAll(ControlView());
      });
    }
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
            getCurrentUserData(value.user.uid);
      });
      Get.offAll(ControlView());
    } catch (e) {
      print(e.message);
      Get.snackbar("Error Login Account", e.message,
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }

  void createUserWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) async {
        saveUser(user);
      });
      Get.offAll(HomeView());
    } catch (e) {
      print(e.message);
      Get.snackbar("Error Login Account", e.message,
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }

  void saveUser(UserCredential user) async {
    UserModel userModel = UserModel(
      userId: user.user.uid,
      email: user.user.email,
      name: name == null ? user.user.displayName : name,
      pic: '',
    );

    await FireStoreUser().addUserToFireStore(userModel);
    setUser(userModel);
  }

  void getCurrentUserData(String uid) async{
    await   FireStoreUser().getCurrentUser(uid).then((value) {
      setUser(UserModel.fromJson(value.data()));
    });
  }

  void setUser(UserModel userModel) async {
    await localStorageData.setUser(userModel);
  }
}
