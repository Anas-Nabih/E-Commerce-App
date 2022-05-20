import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/model/home_model.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_categories_list.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_grid_view.dart';
import 'package:e_commerse_app_uising_getx/widgets/head_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeView extends GetView{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 3.h,left: 5.w,right: 5.w),
                child: TextField(
                  decoration:InputDecoration(
                    prefixIcon: Icon(Icons.search,color: MColors.hintColor,),
                    contentPadding: EdgeInsets.symmetric(vertical: 1.h,horizontal:4.w),
                    fillColor: Colors.grey.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color:MColors.lightGreyColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color:MColors.lightGreyColor)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color:MColors.lightGreyColor)
                    )
                  ) ,
                )),
            SizedBox(height: 4.h,),
            HeadLine(title: "Categories",),
            CategoriesList(categoriesList: Home.homeList,),
            HeadLine(title: "Besr Selling",hasSuffix: true,),
            CustomGridView(
              gridList: BestSelling.bestSellingList,
            ),
          ],
        ),
      ),
    );
  }

}

