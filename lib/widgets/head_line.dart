import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HeadLine extends StatelessWidget {
  final String title;
  final bool hasSuffix;

  const HeadLine({this.title, this.hasSuffix = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            fontWeight: FontWeight.w700,
            fontSize: 15.sp,
          ),
          hasSuffix
              ? CustomText(
                  text: "See all",
                  fontWeight: FontWeight.w300,
                  fontSize: 13.sp,
                )
              : Container(),
        ],
      ),
    );
  }
}
