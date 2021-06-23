import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomRectangularButton extends StatelessWidget {

  final String title;
  final Color color;

  CustomRectangularButton({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
        child: Center(child: Text(title,style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),)),
    );
  }

}
