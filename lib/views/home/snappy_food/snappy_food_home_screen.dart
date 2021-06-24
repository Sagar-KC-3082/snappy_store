import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_food/farmers_market/farmers_market_view.dart';
import 'package:client_app1/views/home/snappy_food/food_and_beverage/food_and_beverages_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SnappyFoodHomeScreen extends StatelessWidget {

  roundedImage(String imageUrl){
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(imageUrl,fit: BoxFit.cover,width: Get.width*0.8,),
      ),
    );
  }

  imageWithText(String imageUrl,String title){
    return Row(
      children: [
        Image.asset(imageUrl,height:50,width: Get.width*0.15,fit: BoxFit.contain,),
        SizedBox(width: 15,),
        Text(title,style: CustomTextStyle.smallBoldTextStyle1(color: Colors.black),)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: ListView(
            children: [

              CustomAppBarRow(title: "Snappy Food",),
              SizedBox(height: 20),

              Text("My Location",style: CustomTextStyle.smallTextStyle1(),),
              SizedBox(height: 5),

              Row(
                children: [
                  Expanded(child: Text("325 Carleton Dr, St. Albert, AB T8N 7L1, Canada",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.black),)),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black,
                    ),
                    child: Center(child: Text("Edit",style: CustomTextStyle.ultraSmallBoldTextStyle(color: Colors.white),)),
                  )
                ],
              ),
              SizedBox(height: 20,),

              SizedBox(
                width: Get.width*0.8,height:Get.height*0.27,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    roundedImage("assets/images/foodItem1.png"),
                    roundedImage("assets/images/foodItem2.jpg"),
                    roundedImage("assets/images/foodItem1.png"),

                  ],
                ),
              ),
              SizedBox(height: 20),

              Text("Sub Category",style: CustomTextStyle.smallBoldTextStyle1(),),
              SizedBox(height: 40),

              CustomInkWell(
                onTap: (){Get.to(FoodAndBeveragesView());},
                child: imageWithText("assets/images/house.png","Food & Beverage"),
              ),
              SizedBox(height: 30,),
              CustomInkWell(
                onTap: (){Get.to(FarmersMarketView());},
                child:imageWithText("assets/images/house.png","Farmer's Market"),
              )
            ],
          ),
        ),
      ),
    );



  }
}
