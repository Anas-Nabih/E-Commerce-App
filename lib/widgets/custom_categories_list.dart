import 'package:e_commerse_app_uising_getx/model/home_model.dart';
import 'package:e_commerse_app_uising_getx/view/catergories_view/categories_view.dart';
import 'package:e_commerse_app_uising_getx/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:sizer/sizer.dart';

class CategoriesList extends StatelessWidget {
  final List<Home> categoriesList;

  const CategoriesList({this.categoriesList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 17.h,
      child: Row(
        children: [
          SizedBox(
            width: 2.w,
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: MaterialScrollBehavior().copyWith(overscroll: false),
              child: ListView.builder(
                itemCount: categoriesList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: ()=> Get.to(CategoriesView()),
                  child: CategoryCard(
                    categoryItem: categoriesList[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
