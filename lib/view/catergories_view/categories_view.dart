import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_grid_view.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';

 import 'package:sizer/sizer.dart';

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
      body:ScrollConfiguration(
        behavior: MaterialScrollBehavior().copyWith(overscroll: false),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: GridView.builder(
            itemCount: BestSelling.bestSellingList.length,
            physics:BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 46.h,
                mainAxisSpacing: 2.h,
                crossAxisSpacing: 6.w),
            itemBuilder: (context, index) {
              final product = BestSelling.bestSellingList[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(product.image),
                  SizedBox(
                    height: 1.h,
                  ),
                  CustomText(
                    text: product.title,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: .5.h,
                  ),
                  CustomText(
                    text: product.desc,
                    fontSize: 10.sp,
                    color: MColors.hintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: .5.h,
                  ),
                  CustomText(
                    text: "\$${product.price}",
                    color: MColors.primaryColor,
                    fontSize: 12.sp,
                  ),
                ],
              );
            },
          ),
        ),
      )

      // CustomGridView(gridList: BestSelling.bestSellingList,),
    );
  }
}