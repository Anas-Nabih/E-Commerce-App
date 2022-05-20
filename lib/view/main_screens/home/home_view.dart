import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/model/home_model.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_categories_list.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_grid_view.dart';
import 'package:e_commerse_app_uising_getx/widgets/head_line.dart';
import 'package:e_commerse_app_uising_getx/widgets/home_search_field.dart';
import 'package:e_commerse_app_uising_getx/widgets/product_card.dart';
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
            backgroundColor: MColors.page_background,
            elevation: 4,
            toolbarHeight: 15.h,
            title: Column(
              children: [
                HomeSearchField(),
              ],
            ),
            floating: true,
            pinned: true,
            expandedHeight: 45.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  SizedBox(height: 22.h,),
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

      /*CustomScrollView(
         slivers: [
          SliverAppBar(
            expandedHeight: 42.h,
            toolbarHeight: 15.h,
            backgroundColor: MColors.page_background,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 4.h,),
                  HomeSearchField(),
                  SizedBox(height: 4.h,),
                ],
              ),
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
                  return ScrollConfiguration(
                    behavior: MaterialScrollBehavior().copyWith(overscroll: false),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: GridView.builder(
                        itemCount: BestSelling.bestSellingList.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 46.h,
                            mainAxisSpacing: 2.h,
                            crossAxisSpacing: 6.w),
                        itemBuilder: (context, index) => ProductCard(
                          product: BestSelling.bestSellingList[index],
                        ),
                      ),
                    ),
                  )*//*CustomGridView(
                  gridList: BestSelling.bestSellingList,
                  )*//*;
                }
              },childCount: 2
          ))
        ]
        *//*SafeArea(
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
        )*//*,
      ),*/
    );
  }

}

