import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_bottom_nav_bar.dart';
import 'package:client_app1/views/home/snappy_food/snappy_food_bottom_nav_bar.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/bottom_nav_screen.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/snappy_parcel_bottom_nav_bar.dart';
import 'package:client_app1/views/home/snappy_services/snappy_services_bottom_nav_var.dart';
import 'package:client_app1/views/home/snappy_store/snappy_store_bottom_nav_bar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_rectangular_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: SingleChildScrollView(
            child: Container(
              height: Get.height*0.93,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      Icon(Icons.menu),
                      Spacer(),
                      Icon(Icons.notifications_none,)
                    ],
                  ),
                  SizedBox(height: 20,),

                  homeScreenImageWidget(),
                  SizedBox(height: 30,),

                  Text(" Category",style: CustomTextStyle.smallBoldTextStyle1(),),
                  SizedBox(height: 20,),

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: CustomInkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyStoreBottomNavScreen()));
                            },
                          child: iconWithText("Snappy Store", "assets/images/fashion.jpg"),
                        )),
                        SizedBox(width: 15,),
                        Expanded(child: CustomInkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyFoodBottomNavScreen()));
                            },
                          child: iconWithText("Snappy Food", "assets/images/food.jpg"),
                        )),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: CustomInkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyClassifiedBottomNavScreen1()));
                            },
                          child: iconWithText("Snappy Classified", "assets/images/classified.jpg"),
                        )),
                        SizedBox(width: 15,),
                        Expanded(child: CustomInkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyServicesBottomNavScreen()));
                            },
                          child: iconWithText("Snappy Services", "assets/images/services.jpeg"),
                        )),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: CustomInkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyParcelBottomNavScreen()));
                            },
                          child: iconWithText("Parcel \& Courier", "assets/images/parcel100.jpg"),
                        )),
                        SizedBox(width: 15,),
                        Expanded(child: Text(""))
                      ],
                    ),
                  )




                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  homeScreenImageWidget(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children:[
          Image.asset("assets/images/homeScreenImage.png",height: Get.height*0.3,width: Get.width,fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Recommended Snappy Apps",style: CustomTextStyle.ultraBoldTextStyle(color: Colors.white),),
                SizedBox(height: 10,),
                Text("We recommend the best for you",style: CustomTextStyle.smallTextStyle1(color: Colors.white),),
                SizedBox(height: Get.height*0.04,),
                SizedBox(
                    width: Get.width*0.3,
                    child: CustomRectangularButton(title: "More Info",color: Color(0xFF40BFFF),)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  
  iconWithText(String title,String imageUrl){
    return Column(
      children: [
        Expanded(child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(imageUrl,fit: BoxFit.cover,width: Get.width*0.35,))),
        SizedBox(height: 5),
        Text(title,style: CustomTextStyle.smallBoldTextStyle1(),),
        SizedBox(height: Get.height*0.02,),

      ],
    );
  }

}
