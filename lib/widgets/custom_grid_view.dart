import 'package:e_commerse_app_uising_getx/model/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomGridView extends StatelessWidget {
  final List<BestSelling> gridList;

  const CustomGridView({this.gridList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScrollConfiguration(
        behavior: MaterialScrollBehavior().copyWith(overscroll: false),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: GridView.builder(
            itemCount: gridList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 46.h,
                mainAxisSpacing: 2.h,
                crossAxisSpacing: 6.w),
            itemBuilder: (context, index) => ProductCard(
              product: gridList[index],
            ),
          ),
        ),
      ),
    );
  }
}
