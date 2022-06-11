 import 'package:e_commerse_app_uising_getx/core/services/home_service.dart';
import 'package:e_commerse_app_uising_getx/model/category_model.dart';
import 'package:e_commerse_app_uising_getx/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  ValueNotifier<bool> _categoriesLoaded = ValueNotifier(false);

  ValueNotifier<bool> get categoriesLoaded => _categoriesLoaded;

  ValueNotifier<bool> _productsLoaded = ValueNotifier(false);

  ValueNotifier<bool> get productsLoaded => _productsLoaded;

  RxList<CategoryModel> categoriesList = <CategoryModel>[].obs;
  RxList<ProductModel> trendingProducts = <ProductModel>[].obs;



  getCategories() async {
    await HomeService().getCategories().then((categories) {
      for (int i = 0; i < categories.length; i++) {
        categoriesList.add(CategoryModel.fromJson(categories[i].data()));

        print(categoriesLoaded.value);
      }
      categoriesLoaded.value = true;
      update();
    });
  }


  getTrendingProducts() async {
    await HomeService().getTrendingProducts().then((products) {
      for (int i = 0; i < products.length; i++) {
        trendingProducts.add(ProductModel.fromJson(products[i].data()));

        print(productsLoaded.value);
      }
      productsLoaded.value = true;
      update();
    });
  }

  HomeViewModel() {
    getCategories();
    getTrendingProducts();
  }

  @override
  void onInit() {
    super.onInit();

  }
}
