import 'package:e_commerse_app_uising_getx/core/services/database/cart_database_helper.dart';
import 'package:e_commerse_app_uising_getx/model/cart_product_model.dart';
import 'package:e_commerse_app_uising_getx/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CartProductModel> _cartProductModel = [];

  List<CartProductModel> get cartProductModel => _cartProductModel;

  double get totalPrice => _totalPrice;
  double _totalPrice = 0.0;
  var dbHelper = CartDatabaseHelper.db;

  CartViewModel() {
    getAllProduct();
  }

  getAllProduct() async {
    _loading.value = true;

     // var dbHelper = CartDatabaseHelper.db;
    _cartProductModel = await dbHelper.getAllProduct();

    print(_cartProductModel.length);
    _loading.value = false;

    getTotalPrice();
    update();
  }

  getTotalPrice() {
    for (int i = 0; i < _cartProductModel.length; i++) {
      _totalPrice += (double.parse(_cartProductModel[i].price) *
          _cartProductModel[i].quantity);
      print(_totalPrice);
      update();
    }
  }

  addProductModel(CartProductModel cartProductModel) async {
    if (_cartProductModel.length == 0) {
      var dbHelper = CartDatabaseHelper.db;
      await dbHelper.insert(cartProductModel);
      _cartProductModel.add(cartProductModel);
    } else {
      for (int i = 0; i < _cartProductModel.length; i++) {
        if (_cartProductModel[i].productId == cartProductModel.productId) {
          return;
        }
        var dbHelper = CartDatabaseHelper.db;
        await dbHelper.insert(cartProductModel);
        _cartProductModel.add(cartProductModel);
        _totalPrice += (double.parse(cartProductModel.price) *
            cartProductModel.quantity);
      }
    }
    update();
  }

  increaseQuantity(int index) async{
    _cartProductModel[index].quantity++;
    _totalPrice +=  (double.parse(_cartProductModel[index].price));
    await dbHelper.updateProduct(_cartProductModel[index]);
    update();
  }

  decreaseQuantity(int index) async{
    _cartProductModel[index].quantity--;
    _totalPrice -=  (double.parse(_cartProductModel[index].price));
    await dbHelper.updateProduct(_cartProductModel[index]);
    update();
  }



}
