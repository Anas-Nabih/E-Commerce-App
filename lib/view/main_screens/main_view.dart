import 'package:e_commerse_app_uising_getx/core/viewmodel/main_view_model.dart';
import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MainView extends GetView<MainViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: GetBuilder<MainViewModel>(
        init: MainViewModel(),
        builder: (controller) => Container(
          height: 8.h,
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14), topLeft: Radius.circular(14)),
              boxShadow: [
                BoxShadow(
                    color: MColors.hintColor.withOpacity(0.2),
                    blurRadius: 1,
                    spreadRadius: 1)
              ]),
          child: GetBuilder(
            init: MainViewModel(),
            builder: (controller) => TabBar(
              controller: controller.tabController,
              indicatorColor: Theme.of(context).backgroundColor,
              tabs: [
                Icon(
                  Icons.home,
                  color: controller.tabIndex.value == 0
                      ? MColors.primaryColor
                      : MColors.hintColor,
                ),
                Icon(
                  Icons.add,
                  color: MColors.primaryColor,
                ),
                Icon(
                  Icons.add,
                  color: MColors.primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
      body: GetBuilder<MainViewModel>(
        init: MainViewModel(),
        builder: (controller) => TabBarView(
            controller: controller.tabController, children: controller.pages),
      ),
    );
  }
}
