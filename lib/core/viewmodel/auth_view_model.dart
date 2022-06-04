import 'package:get/get.dart';

class AuthViewModel extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  RxString email = "".obs;
  RxString password = "".obs;

  RxBool visiblePassword = true.obs;
}