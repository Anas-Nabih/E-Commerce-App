import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class HomeSearchField extends StatelessWidget {
  const HomeSearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        ));
  }
}
