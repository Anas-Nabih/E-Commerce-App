import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeServices {

  final CollectionReference _categoryCollectionRef =
  FirebaseFirestore.instance.collection('categories');

  final CollectionReference _productsCollectionRef =
  FirebaseFirestore.instance.collection('products');

  Future <List<QueryDocumentSnapshot>> getCategory() async{

    var value = await _categoryCollectionRef.get();

    return value.docs;
  }

  Future <List<QueryDocumentSnapshot>> getBestSelling() async{

    var value = await _productsCollectionRef.get();

    return value.docs;
  }
}