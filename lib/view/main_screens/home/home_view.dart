import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/model/home_model.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_categories_list.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_grid_view.dart';
import 'package:e_commerse_app_uising_getx/widgets/head_line.dart';
import 'package:e_commerse_app_uising_getx/widgets/home_search_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeView extends GetView{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        physics: BouncingScrollPhysics(),
         slivers: [
          SliverAppBar(
            // backgroundColor: MColors.page_background,
            elevation: 4,
            toolbarHeight: 12.h,
            title: Column(
              children: [
                HomeSearchField(),
                SizedBox(height: 2.h,)
              ],
            ),
            floating: true,
            pinned: true,
            expandedHeight: 40.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(height: 18.h,),
                  HeadLine(title: "Categories",),
                  CategoriesList(categoriesList: Home.homeList,),
                ],
              ),
            ),
          ),
           SliverList(delegate: SliverChildBuilderDelegate(
                   (BuildContext context, index){
                 if(index == 0 ){
                   return HeadLine(title: "Best Selling",hasSuffix: true,);
                 }else{
                   return CustomGridView(gridList: BestSelling.bestSellingList,isFromHome:true,);
               }
               },childCount: 2
           )),
        ],
      )
    );
  }

}

