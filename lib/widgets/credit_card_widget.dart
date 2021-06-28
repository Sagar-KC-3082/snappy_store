import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CreditCardWidget extends StatelessWidget {

  final Color color;
  CreditCardWidget({this.color});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: Get.height*0.3,
      width: Get.width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: Get.height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("6326",style: CustomTextStyle.ultraBoldTextStyle(color: Colors.white,letterSpacing: 3),),
              Text("6326",style: CustomTextStyle.ultraBoldTextStyle(color: Colors.white,letterSpacing: 3),),
              Text("6326",style: CustomTextStyle.ultraBoldTextStyle(color: Colors.white,letterSpacing: 3),),
              Text("6326",style: CustomTextStyle.ultraBoldTextStyle(color: Colors.white,letterSpacing: 3),),
            ],
          ),
          SizedBox(height: Get.height*0.03,),

          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CARD HOLDER",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("Himalayan KC",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),),
                ],
              ),
              SizedBox(width: Get.width*0.12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CARD SAVE",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.white),),
                  SizedBox(height: 10,),
                  Text("19/2023",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),),
                ],
              ),
            ],
          ),
          SizedBox(height: Get.height*0.01,),


        ],
      ),
    );
  }

}
