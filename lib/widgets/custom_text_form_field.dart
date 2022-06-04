import 'package:e_commerse_app_uising_getx/res/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelTitle;
  final String hintText;
  final IconData iconData;
  final Function onSuffixTapped;
  final bool hasSuffix;
  final bool obscure;
  final Function onSave;
  final Function onChanged;
  final Function(String) validator;

  const CustomTextFormField(
      {this.labelTitle,
      this.onChanged,
      this.obscure = false,
      this.onSuffixTapped,
      this.iconData,
      this.hintText,
      this.hasSuffix = false,
      this.onSave,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelTitle ?? "",
          style: TextStyle(
              color: MColors.hintColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400),
        ),
        TextFormField(
          cursorColor: Get.theme.brightness == Brightness.dark
              ? Get.theme.colorScheme.primary
              : MColors.hintColor,
          obscureText: obscure,
          onSaved: onSave ?? (val) {},
          onChanged: onChanged ?? (val) {},
          validator: validator ?? (val) {},
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: hasSuffix
                ? GestureDetector(
                    onTap: onSuffixTapped ?? () {},
                    child: Icon(
                      iconData,
                    ))
                : Container(),
          ),
        ),
      ],
    );
  }
}
