import 'package:e_commerse_app_uising_getx/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelTitle;
  final String hintText;
  final IconData iconData;
  final bool hasSuffix;
  final Function onSave;
  final Function validator;
  const CustomTextFormField({
    this.labelTitle,
this.iconData,this.hintText,this.hasSuffix = false,this.onSave,this.validator });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( labelTitle ??"",style: TextStyle(color: MColors.hintColor,fontSize: 12.sp,fontWeight: FontWeight.w400),),
        TextFormField(
          onSaved: onSave ?? (val){},
          validator: validator ?? (val){},
          decoration: InputDecoration(
              hintText: hintText,
            suffixIcon: hasSuffix ? Container(): Icon(iconData),
          ),
        ),
      ],
    );
  }
}
