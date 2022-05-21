import 'package:e_commerse_app_uising_getx/model/home_model.dart';
import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class CategoryCard extends StatelessWidget {
  final Home categoryItem;
  const CategoryCard({this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10.h,width: 10.h,
          margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: MColors.lightGreyColor.withOpacity(.1),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0,2)
                )
              ]
          ),
          child: Image.asset(categoryItem.image),
        ),
        CustomText(text: categoryItem.title,fontWeight: FontWeight.w400,fontSize: 12.sp,)
      ],
    );
  }
}
