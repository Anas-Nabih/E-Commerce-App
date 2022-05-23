import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PriceBottomSheet extends StatelessWidget {
  final double price;
  final String btnTitle;
  final Function onTapped;
  const PriceBottomSheet({this.price,this.onTapped,this.btnTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.h),
      height: 9.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: MColors.lightGreyColor,
              spreadRadius: 3,blurRadius: 2
          )
        ]
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "PRRRRRICE",fontWeight: FontWeight.w400,
                fontSize: 12.sp,),
              CustomText(text: "\$$price",fontWeight: FontWeight.w600,
                fontSize: 14.sp,color: MColors.primaryColor,),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: onTapped ?? (){},
            child: Container(
              width: 33.w,
              decoration: BoxDecoration(
                  color: MColors.primaryColor,
                  borderRadius: BorderRadius.circular(6)
              ),
              child: Center(
                child: Text(btnTitle,
                  style: TextStyle(color: Colors.white,fontSize: 12.sp),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
