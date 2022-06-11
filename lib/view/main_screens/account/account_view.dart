import 'package:e_commerse_app_uising_getx/core/viewmodel/AccountController.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/auth_view_model.dart';
import 'package:e_commerse_app_uising_getx/core/viewmodel/splash_controller.dart';
import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:e_commerse_app_uising_getx/widgets/account_item.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:e_commerse_app_uising_getx/widgets/switch_val_account_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AccountView extends GetView<AccountController> {
  final authController = Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 12.h,
                      width: 15.h,
                      margin: EdgeInsets.only(top: 5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                color: MColors.lightGreyColor,
                                offset: Offset(0, 0),
                                blurRadius: 4,
                                spreadRadius: 2)
                          ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset("assets/images/Anas.jpg",
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4.h),
                        CustomText(
                          text: "Anas Nabih",
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                        CustomText(
                          text: "anas7nabih@gmail.com",
                          color: MColors.hintColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: ScrollBehavior().copyWith(overscroll: false),
                    child: ListView(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        AccountItem(
                          title: "Edit Profile".tr,
                        ),
                        SwitchValAccountItem(
                            title: "Notifications".tr,
                            isNotificationSwitcher: true),
                        SwitchValAccountItem(
                            title: "Dark Mode".tr,
                            hasIcon: true,
                            iconData: controller.isDarkTheme.value
                                ? Icons.light_mode_outlined
                                : Icons.dark_mode_outlined),
                        AccountItem(
                          title: "Shipping Address".tr,
                        ),
                        AccountItem(
                          title: "Order history".tr,
                        ),
                        AccountItem(
                          title: "Cards".tr,
                        ),
                        AccountItem(
                            title: "Language".tr,
                            onTapped: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        content: GetBuilder<SplashController>(
                                          init: SplashController(),
                                          builder: (controller) => Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4.w, vertical: 1.h),
                                            color: Get.theme.backgroundColor,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  "Choose Language".tr,
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller
                                                            .changeLanguage(
                                                                "en");
                                                        Get.updateLocale(
                                                            Locale("en"));
                                                        Get.back();
                                                      },
                                                      child: Container(
                                                        height: 8.h,
                                                        width: 22.w,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: controller
                                                                            .appLocale
                                                                            .value ==
                                                                        "en"
                                                                    ? MColors
                                                                        .primaryColor
                                                                        .withOpacity(
                                                                            0.1)
                                                                    : Colors
                                                                        .transparent,
                                                                border:
                                                                    Border.all(
                                                                  color: MColors
                                                                      .hintColor
                                                                      .withOpacity(
                                                                          0.4),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                        child: Center(
                                                          child: Text(
                                                            "English".tr,
                                                            style: TextStyle(
                                                              fontSize: 13.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller
                                                            .changeLanguage(
                                                                "ar");
                                                        Get.updateLocale(
                                                            Locale("ar"));
                                                        Get.back();
                                                      },
                                                      child: Container(
                                                        height: 8.h,
                                                        width: 22.w,
                                                        decoration:
                                                            BoxDecoration(
                                                                color: controller
                                                                            .appLocale
                                                                            .value ==
                                                                        "ar"
                                                                    ? MColors
                                                                        .primaryColor
                                                                        .withOpacity(
                                                                            0.1)
                                                                    : Colors
                                                                        .transparent,
                                                                border:
                                                                    Border.all(
                                                                  color: MColors
                                                                      .hintColor
                                                                      .withOpacity(
                                                                          0.4),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12)),
                                                        child: Center(
                                                          child: Text(
                                                            "Arabic".tr,
                                                            style: TextStyle(
                                                              fontSize: 13.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ));
                            }),
                        AccountItem(
                            title: "Log Out".tr,
                            isEnd: true,
                            onTapped: () =>
                                Get.find<AuthViewModel>().signOut()),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
