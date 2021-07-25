import 'package:e_commerse_app_uising_getx/helper/local_storge_data.dart';
import 'package:e_commerse_app_uising_getx/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileViewModel extends GetxController {

  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool>  _loading =ValueNotifier(false)  ;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCurrentUser();
  }
  final LocalStorageData localStorageData = Get.find();

  UserModel get userModel => _userModel;
  UserModel _userModel;

  void getCurrentUser() async{
    _loading.value = true;
    await localStorageData.getUser.then((value) {
      _userModel = value;
    });
    _loading.value = false;
    update();
  }

  Future<void> signOut() async{
    GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
    localStorageData.deleteUser();
  }


}