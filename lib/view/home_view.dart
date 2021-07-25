import 'package:e_commerse_app_uising_getx/constance.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/control_view_model.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/home_view_model.dart';
import 'package:e_commerse_app_uising_getx/view/auth/login_view.dart';
import 'package:e_commerse_app_uising_getx/view/details_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text.dart';

class HomeView extends StatelessWidget {
  final List<String> names = <String>[
    's',
    's',
    's',
    's',
    's',
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: Get.find(),
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                  child: Column(
                    children: [
                      _searchTextFormField(),
                      SizedBox(
                        height: 30,
                      ),
                      CustomText(
                        text: 'Categories',
                        fontSize: 16,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _listViewCategory(),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Best Selling",
                            fontSize: 18,
                          ),
                          CustomText(
                            text: 'See all',
                            fontSize: 16,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      _listViewProduct(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _listViewCategory() {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => Container(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categoryModel.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 60,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade100),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(controller.categoryModel[index].image),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: controller.categoryModel[index].name,
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 20,
          ),
        ),
      ),
    );
  }

  Widget _listViewProduct() {
    return GetBuilder<HomeViewModel>(
      builder:(controller) => Container(
        height: 350,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.productsModel.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Get.to(DetailsView(
                  model: controller.productsModel[index],
                ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.shade100),
                      child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width * .4,
                          child: Image.network(
                            controller.productsModel[index].image,
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: controller.productsModel[index].name,
                      alignment: Alignment.bottomLeft,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: controller.productsModel[index].description,
                      color: Colors.grey,
                      alignment: Alignment.bottomLeft,
                      maxLine: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: controller.productsModel[index].price.toString() + '\$',
                      color: primaryColor,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 20,
          ),
        ),
      ),
    );
  }
}
