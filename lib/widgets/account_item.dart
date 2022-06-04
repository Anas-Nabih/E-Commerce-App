import 'package:e_commerse_app_uising_getx/widgets/custom_text.dart';
import 'package:flutter/material.dart';
 import 'package:sizer/sizer.dart';

class AccountItem extends StatelessWidget {
  final String title, image;
  final bool isEnd;
  final bool hasIcon;
  final IconData iconData;
  final Function onTapped;
  const AccountItem({
    this.title,this.iconData,this.onTapped,this.image,this.isEnd = false,this.hasIcon= false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: GestureDetector(
        onTap: onTapped ?? (){},
        child: Row(
          children: [
            hasIcon ? Icon(iconData)
                : Image.asset(image == null? "assets/images/edit-button1.png" : image,width: 5.w,),
            SizedBox(width: 5.w,),
            CustomText(text: title,fontSize: 15.sp,fontWeight: FontWeight.w400,),
            Spacer(),
            isEnd ?  Container() : Icon(Icons.arrow_forward_ios,size: 4.w,)
          ],
        ),
      ),
    );
  }
}