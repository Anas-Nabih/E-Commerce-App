import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/widgets/cart_list.dart';
import 'package:e_commerse_app_uising_getx/widgets/product_details_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CartView extends GetView{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CartList(list:BestSelling.bestSellingList),
          PriceBottomSheet(price: "1500",btnTitle: "Check out",),
          SizedBox(height: 8.h,)
        ],
      ),
    );
  }

}