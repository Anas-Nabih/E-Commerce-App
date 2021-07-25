import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/cart_viewmodel.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/checkout_viewmodel.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/home_view_model.dart';
import 'package:get/get.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/control_view_model.dart';

import 'local_storge_data.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControlViewModel());
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => CartViewModel());
    Get.lazyPut(() => LocalStorageData());
    Get.lazyPut(() => CheckOutViewModel());
  }



}