import 'package:e_commerse_app_uising_getx/core/viewmodel/main_view_model.dart';
import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MainView extends GetView<MainViewModel>{

  // final mainController = Get.put(MainViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GetBuilder<MainViewModel>(
        init: MainViewModel(),
        builder:(controller) =>Container(
          height: 8.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14),
                topLeft: Radius.circular(14)
              ),
              boxShadow: [
                BoxShadow(
                    color: MColors.hintColor.withOpacity(0.3),
                    blurRadius: 3,spreadRadius: 1
                )
              ]
          ),
          child: TabBar(
            controller: controller.tabController,
            tabs: [
              Icon(Icons.home,color: MColors.primaryColor,),
              Icon(Icons.add,color: MColors.primaryColor,),
              Icon(Icons.add,color: MColors.primaryColor,),
            ],
          ),
        ),
      ),
      body: GetBuilder<MainViewModel>(
        init: MainViewModel(),
        builder: (controller) => TabBarView(
          controller: controller.tabController,
            children: controller.pages),
      ),
    );
  }
}