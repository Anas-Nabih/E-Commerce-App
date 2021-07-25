import 'package:e_commerse_app_uising_getx/core/services/home_services.dart';
import 'package:e_commerse_app_uising_getx/model/category_model.dart';
import 'package:e_commerse_app_uising_getx/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController{

  ValueNotifier<bool> get loading=>_loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List <CategoryModel> get categoryModel => _categoryModel;
  List <CategoryModel> _categoryModel = [];

  List <ProductModel> get productsModel => _productsModel;
  List <ProductModel> _productsModel = [];

  HomeViewModel(){
    getCategory();
    getBestSellingProducts();
  }

  getCategory() async{
    _loading.value = true;
     HomeServices().getCategory().then((value) {
      for(int i=0 ; i<value.length ; i++) {
        _categoryModel.add(CategoryModel.fromJson(value[i].data()));
       //print(_categoryModel.length);
        _loading.value = false;
      }
      update();

    });
  }
  getBestSellingProducts() async{
    _loading.value = true;

    HomeServices().getBestSelling().then((value) {

      for(int i=0 ; i<value.length ; i++) {
        _productsModel.add(ProductModel.fromJson(value[i].data()));
        _loading.value = false;
      }
      print(_productsModel.length);
      update();
    });
  }
}