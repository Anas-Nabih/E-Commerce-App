import 'package:e_commerse_app_uising_getx/core/viewmodel/AccountController.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/home_view_model.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/main_view_model.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/product_details_controller.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/splash_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut<MainViewModel>(() => MainViewModel());
    Get.lazyPut<ProductDetailsController>(() => ProductDetailsController());
    Get.lazyPut(() => AccountController());
    Get.lazyPut(() => SplashController());
  }
}