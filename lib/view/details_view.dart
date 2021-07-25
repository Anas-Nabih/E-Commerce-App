import 'package:e_commerse_app_uising_getx/constance.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/cart_viewmodel.dart';
import 'package:e_commerse_app_uising_getx/model/cart_product_model.dart';
import 'package:e_commerse_app_uising_getx/model/product_model.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_button.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsView extends StatelessWidget {
  ProductModel model;

  DetailsView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                model.image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: CustomText(
                text: model.name,
                fontSize: 25,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width * .45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                        text: "Size",
                        fontSize: 18,
                      ),
                      CustomText(
                        text: model.sized,
                        fontSize: 22,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width * .45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(
                        text: "Color",
                        fontSize: 18,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: model.color,
                            borderRadius: BorderRadius.circular(25)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: CustomText(
                text: "Details",
                fontSize: 25,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      CustomText(
                        text: model.description,
                        fontSize: 20,
                        height: 2.5,
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: "PRICE",
                      fontSize: 25,
                      color: Colors.grey,
                    ),
                    CustomText(
                      text: model.price + '\$',
                      fontSize: 25,
                      color: primaryColor,
                    ),
                  ],
                ),

                GetBuilder<CartViewModel>(
                  init: CartViewModel(),
                  builder:(controller) =>
                      Container(
                    width: 180,
                    height: 90,
                    padding: EdgeInsets.all(20),
                    child: Expanded(
                      child: CustomButton(
                      text: 'Add',
                          onPressed:(){

                      controller.addProductModel(
                      CartProductModel(
                      name: model.name,
                      image:model.image,
                      price: model.price,
                      quantity: 1,
                      productId: model.productId,
                      )
                      );

                      }
                        //   controller.addProductModel(
                        //   CartProductModel(
                        //     name: model.name,
                        //     image:model.image,
                        //     price: model.price,
                        //     quantity: 1,
                        //     productId: model.productId,
                        //   )
                        // ),
                        ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
