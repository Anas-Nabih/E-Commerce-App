import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerse_app_uising_getx/model/category_model.dart';
 import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryItem;

  const CategoryCard({this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 9.h,
          width: 9.h,
          margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: MColors.lightGreyColor.withOpacity(.1),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0, 2))
              ]),
          child: Image.network(categoryItem.image),
        ),
        SizedBox(
          width: 8.h,
          child: CustomText(
            text: categoryItem.name,
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
          ),
        )
      ],
    );
  }
}
