import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerse_app_uising_getx/model/category_model.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {

  RxList<CategoryModel> categoriesList = <CategoryModel>[].obs;

  final _categoryCollectionRef =
      FirebaseFirestore.instance.collection("categories");

  getCategories() {
    _categoryCollectionRef.get().then((categories) {
      for(int i = 0 ; i<categories.docs.length ; i++){
        categoriesList.add(CategoryModel.fromJson(categories.docs[i].data()));
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    getCategories();
  }
}
