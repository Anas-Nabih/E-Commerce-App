import 'package:e_commerse_app_uising_getx/core/viewmodel/AccountController.dart';
import 'package:e_commerse_app_uising_getx/res/commen_uils/preference/prefs.dart';
import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SwitchValAccountItem extends StatelessWidget {
  final String title, image;
  final bool isEnd;
  final bool hasIcon;
  final isNotificationSwitcher;

  final IconData iconData;

  SwitchValAccountItem({
    this.title,
    this.iconData,
    this.image,
    this.isEnd = false,
    this.hasIcon = false,
    this.isNotificationSwitcher = false,
  });

  final controller = Get.put(AccountController());
  final accountController = Get.find<AccountController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: Row(
          children: [
            hasIcon
                ? Icon(iconData)
                : Image.asset(
                    image == null ? "assets/images/edit-button1.png" : image,
                    width: 5.w,
                  ),
            SizedBox(
              width: 5.w,
            ),
            CustomText(
              text: title,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
            Spacer(),
            isNotificationSwitcher
                ? CupertinoSwitch(
                    value: accountController.openNotification.value,
                    onChanged: (val) {
                      accountController.openNotification.value = val;
                      Prefs.setNotificationStatus(val);
                    })
                : CupertinoSwitch(
                    value: accountController.isDarkTheme.value,
                    onChanged: (val) {
                      accountController.isDarkTheme.value = val;
                      Get.changeThemeMode(accountController.isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
                      // accountController.changeThemeMode();
                      Prefs.setThemeMode(val);
                    })
          ],
        ),
      ),
    );
  }
}
