import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_inkwell.dart';


class FullWidthButton extends StatelessWidget {
  
  final String title;
  final Color color;
  final Function onTap;
  final BorderRadius borderRadius;
  final Border border;
  
  FullWidthButton({this.title,this.color,this.onTap,this.borderRadius,this.border});
  
  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: onTap,
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: borderRadius == null ? BorderRadius.circular(20) : borderRadius,
          border:  border == null ? null : border ,
          color: color
        ),
        padding: EdgeInsets.symmetric(vertical: 22),
        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
        child: Center(child: Text(title,style: CustomTextStyle.boldMediumTextStyle(color:border == null ? Colors.white : Colors.grey),),),
      ),
    );
  }
}
