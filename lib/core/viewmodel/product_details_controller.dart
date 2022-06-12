import 'package:e_commerse_app_uising_getx/model/product_model.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController{


  final itemBean = ProductModel().obs;

  @override
  void onInit() {
    print("anas");
    itemBean.value = Get.arguments as ProductModel;
    Get.log(itemBean.value.toString());
    super.onInit();
  }
}