import 'package:e_commerse_app_uising_getx/constance.dart';
import 'package:e_commerse_app_uising_getx/helper/enum.dart';
import 'package:e_commerse_app_uising_getx/view/widget/custom_text.dart';
import 'package:flutter/material.dart';

class DeliveryTime extends StatelessWidget {

  Delivery  delivery  = Delivery.StandardDelivery;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          RadioListTile<Delivery>(
            value: Delivery.StandardDelivery,
            groupValue: null,
            onChanged: (Delivery value){},
            title: CustomText(
              text: 'Standard Delivery',
              fontSize: 24,
            ),
            subtitle:CustomText(
              text: '\n Order will be delivered between 3 - 5 business days',
              fontSize: 14,
            ) ,
            activeColor: primaryColor,
          ),
        ],
      ),
    );
  }
}