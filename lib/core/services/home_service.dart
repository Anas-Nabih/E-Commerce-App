import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService {
  final CollectionReference _categoryCollectionRef =
  FirebaseFirestore.instance.collection("categories");

  Future <List<QueryDocumentSnapshot>> getCategories() async {
    var categories = await _categoryCollectionRef.get();
    return categories.docs;
  }

  final CollectionReference _productsCollectionRef = FirebaseFirestore.instance
      .collection("products");

  Future<List<QueryDocumentSnapshot>> getTrendingProducts() async {
    var trendingProducts = await _productsCollectionRef.get();
    return trendingProducts.docs;
  }
}