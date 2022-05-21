import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class CartItem extends StatelessWidget {
   var item;
   final int index;
   CartItem({this.item,this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: index == 0 ? 4.h : 0,right: 5.w,left: 5.w),
      child: Row(
        children: [
          Container(
              height: 20.h,width: 20.h,
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(item.image,fit: BoxFit.cover
                  ,),
              )),
          SizedBox(width: 5.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text:item.title,fontWeight: FontWeight.w400,fontSize: 15.sp,),
              SizedBox(height: 1.h,),
              CustomText(text:"\$${item.price}",fontWeight: FontWeight.w400,fontSize: 13.sp,color: MColors.primaryColor,),
              SizedBox(height: 1.h,),
              Container(
                height: 5.h,width: 23.w,
                decoration: BoxDecoration(
                  color: MColors.lightGreyColor,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.add,size: 5.w,),
                    CustomText(text: "1",fontSize: 12.sp,),
                    Icon(Icons.remove,size: 5.w,),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
