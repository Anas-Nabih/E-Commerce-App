import 'package:e_commerse_app_uising_getx/constance.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/cart_viewmodel.dart';
import 'package:e_commerse_app_uising_getx/view/checkout/checkout_page.dart';
import 'package:e_commerse_app_uising_getx/view/checkout/checkout_view_widget.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_button.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartViewModel>(
        init: Get.find(),
    builder: (controller) => Scaffold(
      body: controller.cartProductModel.length == 0
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/cart_empty.svg",
            width: 200,
            height: 200,
          ),
          SizedBox(height: 20,),
          CustomText(
            text: 'cart Empty',
            fontSize: 32,
            alignment: Alignment.center,
          )
        ],
      )
          :Column(
        children: [
          Expanded(
            child: Container(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 140,
                            child: Row(
                              children: [
                                Container(
                                    width: 140,
                                    child: Image.network(
                                      controller.cartProductModel[index].image,
                                      fit: BoxFit.fill,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: controller
                                            .cartProductModel[index].name,
                                        fontSize: 20,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text:
                                            '\$ ${controller.cartProductModel[index].price.toString()}',
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.grey.shade200,
                                        ),
                                        width: 140,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              child: Icon(Icons.add),
                                              onTap: () {
                                                controller
                                                    .increaseQuantity(index);
                                              },
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            CustomText(
                                              text: controller
                                                  .cartProductModel[index]
                                                  .quantity
                                                  .toString(),
                                              fontSize: 20,
                                              alignment: Alignment.center,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                controller
                                                    .decreaseQuantity(index);
                                              },
                                              child: Container(
                                                  padding:
                                                      EdgeInsets.only(top: 15),
                                                  child: Icon(
                                                      Icons.maximize_sharp)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: controller.cartProductModel.length,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 15,
                          );
                        },
                      ),
                    ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'TOTAL',
                      color: Colors.grey,
                      fontSize: 22,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GetBuilder<CartViewModel>(
                      init: Get.find(),
                      builder: (controller) => CustomText(
                        text: '\$  200',
                        color: primaryColor,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 110,
                  child: CustomButton(
                    text: 'Check Out',
                    onPressed: () {
                      Get.to(() => CheckOutView());
                    }
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
