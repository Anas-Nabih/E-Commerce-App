import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:e_commerse_app_uising_getx/widgets/product_details_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProductDetailsView extends GetView {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: PriceBottomSheet(price: 155,btnTitle: "Add to cart",),
      body: ScrollConfiguration(
        behavior: MaterialScrollBehavior().copyWith(overscroll: false),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 40.h,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Adobe"),
                background:Image.asset("assets/images/ch.png",fit: BoxFit.cover,) ,

              ),
            ),
            SliverToBoxAdapter(
              child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      CustomText(
                        text: "Nike Dri-FIT Long Sleeve",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 6.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: MColors.borderColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: "Size",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                CustomText(
                                  text: "XL",
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 6.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: MColors.borderColor)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomText(
                                  text: "Color",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                Container(
                                  height: 2.5.h,
                                  width: 2.5.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xff31407B ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomText(
                          text: "Details", fontSize: 15.sp, fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w400, height: 2),
                      ),
                    ],
                  ),
                ),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}
