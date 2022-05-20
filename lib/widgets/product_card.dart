import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class ProductCard extends StatelessWidget {
  final BestSelling product;

  const ProductCard({this.product});

  @override
  Widget build(BuildContext context) {
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
  }
}
