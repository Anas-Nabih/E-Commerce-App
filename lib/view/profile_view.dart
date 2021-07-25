import 'package:e_commerse_app_uising_getx/core/viewmodel/profile_view_model.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/login_view.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileViewModel>(
      init: ProfileViewModel(),
      builder: (controller) => controller.loading.value
          ? CircularProgressIndicator()
          : Scaffold(
              body: Container(
                padding: EdgeInsets.only(top: 50),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(80),
                                  image: DecorationImage(
                                      image: controller.userModel == null
                                          ? AssetImage(
                                              'assets/images/facebook.png')
                                          : controller.userModel.pic ==
                                                  'default'
                                              ? AssetImage(
                                                  'assets/images/facebook.png')
                                              : AssetImage(
                                                  'assets/images/Anas.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: controller.userModel.name,
                                  color: Colors.black,
                                  fontSize: 32,
                                ),
                                CustomText(
                                  text: controller.userModel.email,
                                  color: Colors.black,
                                  fontSize: 24,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                     SingleChildScrollView(
                       child: Container(
                         child: Column(
                           children: [
                             SizedBox(
                               height: 100,
                             ),
                             FlatButton(
                                 onPressed: () {},
                                 child: ListTile(
                                   title: CustomText(
                                     text: 'Edit Profile',
                                     fontSize: 21,
                                   ),
                                   leading: Image.asset("assets/images/pencil1.png",height: 30,width: 30,),
                                   trailing: Icon(
                                     Icons.navigate_next,
                                     color: Colors.black,
                                   ),
                                 )),
                             SizedBox(height: 20,),
                             FlatButton(
                                 onPressed: () {},
                                 child: ListTile(
                                   title: CustomText(
                                     text: 'Shipping Address',
                                     fontSize: 21,
                                   ),
                                   leading: Image.asset("assets/images/location-pin1.png",height: 30,width: 30,),
                                   trailing: Icon(
                                     Icons.navigate_next,
                                     color: Colors.black,
                                   ),
                                 )),
                             SizedBox(height: 20,),
                             FlatButton(
                                 onPressed: () {},
                                 child: ListTile(
                                   title: CustomText(
                                     text: 'Order History',
                                     fontSize: 21,
                                   ),
                                   leading: Image.asset("assets/images/clock-shop (1).png",height: 30,width: 30,),
                                   trailing: Icon(
                                     Icons.navigate_next,
                                     color: Colors.black,
                                   ),
                                 )),
                             SizedBox(height: 20,),
                             FlatButton(
                                 onPressed: () {},
                                 child: ListTile(
                                   title: CustomText(
                                     text: 'Cards',
                                     fontSize: 21,
                                   ),
                                   leading: Image.asset("assets/images/credit-card.png",height: 30,width: 30,),
                                   trailing: Icon(
                                     Icons.navigate_next,
                                     color: Colors.black,
                                   ),
                                 )),
                             SizedBox(height: 20,),
                             FlatButton(
                                 onPressed: () {},
                                 child: ListTile(
                                   title: CustomText(
                                     text: 'Notification',
                                     fontSize: 21,
                                   ),
                                   leading: Image.asset("assets/images/notification1.png",height: 30,width: 30,),
                                   trailing: Icon(
                                     Icons.navigate_next,
                                     color: Colors.black,
                                   ),
                                 )),
                             SizedBox(height: 20,),
                             FlatButton(
                                 onPressed: () {
                                   controller.signOut();
                                   Get.offAll(LoginView());
                                 },
                                 child: ListTile(
                                   title: CustomText(
                                     text: 'Log Out',
                                     fontSize: 21,
                                   ),
                                   leading: Image.asset("assets/images/location-pin1.png",height: 30,width: 30,),
                                   trailing: Icon(
                                     Icons.navigate_next,
                                     color: Colors.black,
                                   ),
                                 )),
                             SizedBox(height: 20,),
                           ],
                         ),
                       ),
                     ),

                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
