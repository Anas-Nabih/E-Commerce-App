import 'package:e_commerse_app_uising_getx/view/auth/login_view.dart';
import 'package:e_commerse_app_uising_getx/view/auth/second_screen.dart';
import 'package:e_commerse_app_uising_getx/view/controller_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/viewmodel/cart_viewmodel.dart';
import 'helper/binding.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(CartViewModel());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SourceSans'
      ),
      home: ControlView(),
    );
  }
}
