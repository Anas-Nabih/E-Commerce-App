import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerse_app_uising_getx/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {

  ValueNotifier<bool> _categoriesLoaded = ValueNotifier(false);
  ValueNotifier<bool> get categoriesLoaded =>  _categoriesLoaded;

  RxList<CategoryModel> categoriesList = <CategoryModel>[].obs;

  final _categoryCollectionRef =
      FirebaseFirestore.instance.collection("categories");

  getCategories() async {

   await _categoryCollectionRef.get().then((categories) {
      for(int i = 0 ; i<categories.docs.length ; i++){
        categoriesList.add(CategoryModel.fromJson(categories.docs[i].data()));
        categoriesLoaded.value = true;
        print(categoriesLoaded.value );
      }
      update();
    });

  }

  HomeViewModel(){
    getCategories();
  }

  @override
  void onInit() {
    super.onInit();

  }
}
