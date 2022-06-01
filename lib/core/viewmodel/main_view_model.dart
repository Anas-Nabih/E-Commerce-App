import 'package:e_commerse_app_uising_getx/view/main_screens/account/account_view.dart';
import 'package:e_commerse_app_uising_getx/view/main_screens/cart/cart_view.dart';
import 'package:e_commerse_app_uising_getx/view/main_screens/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainViewModel extends GetxController with SingleGetTickerProviderMixin {
  TabController tabController;

  RxInt tabIndex = 0.obs;

  List<Widget> pages = [HomeView(), CartView(), AccountView()];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: pages.length, vsync: this);
    tabIndex.value = tabController.index;
  }
}
