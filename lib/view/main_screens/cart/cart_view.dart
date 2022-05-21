import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/widgets/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends GetView{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartList(list:BestSelling.bestSellingList),
    );
  }

}