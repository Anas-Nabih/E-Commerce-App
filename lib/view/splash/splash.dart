import 'package:e_commerse_app_uising_getx/core/viewmodel/splash_controller.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashView extends GetView<SplashController>{
  final authService = Get.put(SplashController());
  final splashController= Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(child: Lottie.asset('assets/images/splash.json')),
    );
  }

}