import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:e_commerse_app_uising_getx/view/home/best_selling_model.dart';
import 'package:e_commerse_app_uising_getx/view/home/home_model.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';
 import 'package:sizer/sizer.dart';

class HomeView extends GetView{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
                )),
            SizedBox(height: 4.h,),
            HeadLine(title: "Categories",),
             SizedBox(
              height: 20.h,
              child: Row(
                children: [
                  SizedBox(width: 2.w,),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: MaterialScrollBehavior().copyWith(overscroll: false),
                      child: ListView.builder(
                        itemCount: Home.homeList.length,scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            height: 10.h,width: 10.h,
                            padding: EdgeInsets.all(8),
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
                            child: Image.asset(Home.homeList[index].image),
                          ),
                          CustomText(text: Home.homeList[index].title,fontWeight: FontWeight.w400,fontSize: 12.sp,)
                        ],
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            HeadLine(title: "Besr Selling",hasSuffix: true,),
            Expanded(
              child: ScrollConfiguration(
                behavior: MaterialScrollBehavior().copyWith(overscroll: false),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: GridView.builder(
                    itemCount: BestSelling.bestSellingList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 46.h,
                    mainAxisSpacing: 2.h,
                    crossAxisSpacing: 6.w
                  ), itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(BestSelling.bestSellingList[index].image),
                      SizedBox(height: 1.h,),
                      CustomText(text: BestSelling.bestSellingList[index].title,fontSize: 13.sp,fontWeight: FontWeight.w400,),
                      SizedBox(height: .5.h,),
                      CustomText(text: BestSelling.bestSellingList[index].desc,fontSize: 10.sp,color: MColors.hintColor,fontWeight: FontWeight.w400,),
                      SizedBox(height: .5.h,),
                      CustomText(text: "\$${BestSelling.bestSellingList[index].price}",color: MColors.primaryColor,fontSize: 12.sp,),
                    ],
                  ),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}

class HeadLine extends StatelessWidget {
  final String title;
  final bool hasSuffix;
  const HeadLine({
    this.title,this.hasSuffix = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(left: 5.w,right: 5.w,bottom: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: title,
            fontWeight: FontWeight.w700,fontSize: 15.sp,),
          hasSuffix ? CustomText(text: "See all",
            fontWeight: FontWeight.w300,fontSize: 13.sp,) : Container(),
        ],
      ),
    );
  }
}