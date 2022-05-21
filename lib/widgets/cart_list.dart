import 'package:e_commerse_app_uising_getx/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CartList extends StatelessWidget {
  final List list;
  const CartList({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount:list.length,
      physics: BouncingScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 3.h,),
      itemBuilder: (context, index) => Dismissible(
          key: Key(list[index].id),

          background: Container(
            height: 20.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red
            ),
          ),
          child: CartItem(item:list[index],index:index)),);
  }
}
