import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_grid_view.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';

class CategoriesView extends GetView{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0.0,
        centerTitle: true,
        title: CustomText(
          text: "Men",fontWeight: FontWeight.w400,color: MColors.hintColor,
        ),
        leading: GestureDetector(
            onTap: ()=>Get.back(),
            child: Icon(Icons.arrow_back_ios,color: MColors.hintColor,)),
      ),
      body: CustomGridView(gridList: BestSelling.bestSellingList,),
    );
  }
}