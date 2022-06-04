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

    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    Get.offAll(MainView());
  }

  signInWithFacebook()async{
    FacebookLoginResult result = await _facebookLogin.logIn(["email"]);
    final accessToken = result.accessToken.token;

    if(result.status == FacebookLoginStatus.loggedIn){
      final facebookCredential = FacebookAuthProvider.credential(accessToken);
      await _auth.signInWithCredential(facebookCredential);
      print(facebookCredential);
    }
    
  }
}
