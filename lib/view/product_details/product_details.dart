import 'package:e_commerse_app_uising_getx/core/viewmodel/product_details_controller.dart';
import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:e_commerse_app_uising_getx/widgets/product_details_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailsController>(
      init: ProductDetailsController(),
      builder: (controller) => Scaffold(
        bottomSheet: PriceBottomSheet(
          price: controller.itemBean.value.price,
          btnTitle: "Add to cart",
        ),
        body: ScrollConfiguration(
          behavior: MaterialScrollBehavior().copyWith(overscroll: false),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 40.h,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(controller.itemBean.value.title,style: TextStyle
                    (
                    color: Colors.white



                  )),
                  background: Image.network(
                    controller.itemBean.value.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
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
                          text: controller.itemBean.value.desc,
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
                                  border:
                                      Border.all(color: MColors.borderColor)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomText(
                                    text: "Size".tr,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  CustomText(
                                    text: controller.itemBean.value.sized,
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
                                  border:
                                      Border.all(color: MColors.borderColor)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomText(
                                    text: "Color".tr,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Container(
                                    height: 2.5.h,
                                    width: 2.5.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Color(int.parse(
                                          controller.itemBean.value.color)),
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
                            text: "Details".tr,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          controller.itemBean.value.details,
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              height: 2),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
