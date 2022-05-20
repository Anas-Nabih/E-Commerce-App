import 'package:get/get.dart';

class AuthViewModel extends GetxController{

  RxInt counter  = 0.obs ;
  bool isTapped = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

  increment(){
    counter ++;
    isTapped = ! isTapped;
    // update();
  }
}