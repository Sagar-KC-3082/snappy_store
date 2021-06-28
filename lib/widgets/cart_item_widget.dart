import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/cart/cart_model.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartItemWidget extends StatefulWidget {

  final CartModel cartModel ;
  final bool hideDeleteIcon;
  CartItemWidget({this.cartModel,this.hideDeleteIcon});

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 10
          )
        ],
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.symmetric(vertical: 15,horizontal:0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
              child: Image.asset(widget.cartModel.imageUrl,height: Get.height*0.12,width: Get.width*0.22,fit: BoxFit.cover,)),
          SizedBox(width: 15,),
       Expanded(
         child: Column(
           children: [
             SizedBox(height: 10,),
             Row(
               children: [
                 Expanded(child: Text(widget.cartModel.productName,style: CustomTextStyle.smallBoldTextStyle1(),)),
                 CustomInkWell(
                     onTap: (){setState(() {
                       _isTapped = !_isTapped;
                     });},
                     child: Icon(Icons.favorite,color: _isTapped ? Colors.pinkAccent : Colors.grey)),
                 SizedBox(width: 10,),
                 widget.hideDeleteIcon==true? Container() : Icon(Icons.delete_outline,color: Colors.grey,),
                 SizedBox(width: 5,),
               ],
             ),
             SizedBox(height: 10,),

             Row(
               children: [
                 Expanded(child: Text( widget.cartModel.price.toString(),style: CustomTextStyle.smallBoldTextStyle1(color: Colors.black),))
               ],
             )
           ],
         ),
       ),

        ],
      ),
    );
  }
}
