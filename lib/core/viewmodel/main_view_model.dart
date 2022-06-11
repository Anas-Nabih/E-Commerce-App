import 'package:e_commerse_app_uising_getx/view/main_screens/account/account_view.dart';
import 'package:e_commerse_app_uising_getx/view/main_screens/cart/cart_view.dart';
import 'package:e_commerse_app_uising_getx/view/main_screens/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainViewModel extends GetxController with GetSingleTickerProviderStateMixin  {
  TabController tabController;


  int _tabIndex = 0;


  int get tabIndex => _tabIndex;

  set tabIndex(int value) {
    _tabIndex = value;
    update();
  }


  List<Widget> pages = [HomeView(), CartView(), AccountView()];

  @override
  void onInit() {
     super.onInit();
    tabController = TabController(length: pages.length, vsync: this);
    tabController.addListener(() {
      tabIndex = tabController.index;
    });

  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  int getCurrentIndex(){
    tabIndex = tabController.index;
    // update();
    return tabIndex;
  }
}
