import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackOrderViewLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/newMap.png"),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                child: CustomAppBarRowWithCustomIconWithNoSpacing(title: "Order Details",),
              ),
              SizedBox(height: 30,),

              Spacer(),
              Stack(
                children: [
                  Image.asset("assets/images/route.png",fit: BoxFit.fill,height: Get.height*0.2,width: Get.width,),
                  Positioned(
                      left: 0,top: 0,
                      child: Image.asset("assets/images/marker.png")),
                  Positioned(
                      bottom: 0,right: 0,
                      child: Image.asset("assets/images/marker2.png")),
                ],
              ),
              Spacer(),

              Container(
                padding:EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.2),offset: Offset(3,3), blurRadius: 5,spreadRadius: 3),
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      children: [
                        CircleAvatar(
                          radius:30,
                          backgroundImage: AssetImage("assets/images/user4.jpg"),
                        ),
                        SizedBox(height: 10,),
                        Text("John Smith",style: CustomTextStyle.ultraSmallBoldTextStyle(),)
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFFD6642E).withOpacity(0.3)),
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.call,color: AppColors.primaryDarkOrange,size: 30,),
                        ),
                        SizedBox(height: 10,),
                        Text("+91 8930872205",style: CustomTextStyle.ultraSmallBoldTextStyle(),)
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFFD6642E).withOpacity(0.3)),
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.emoji_transportation_sharp,color: AppColors.primaryDarkOrange,size: 30,),
                        ),
                        SizedBox(height: 10,),
                        Text("ABCD 123",style: CustomTextStyle.ultraSmallBoldTextStyle(),)
                      ],
                    ),

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
