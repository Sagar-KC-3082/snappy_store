import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_food/snappy_food_home_screen.dart';
import 'package:client_app1/views/home/snappy_store/snappy_store_home_screen.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.menu),
                    Spacer(),
                    Icon(Icons.notifications_none,color: Colors.grey,)
                  ],
                ),
                SizedBox(height: 20,),

                homeScreenImageWidget(),
                SizedBox(height: 20,),

                Text("Category",style: CustomTextStyle.smallBoldTextStyle1(),),

                Row(
                  children: [
                    Expanded(child: InkWell(
                      onTap: (){Get.to(SnappyStoreHomeScreen());},
                      child: iconWithText("Snappy Store", "assets/images/house.png"),
                    )),
                    Expanded(child: CustomInkWell(
                      onTap: (){Get.to(SnappyFoodHomeScreen());},
                      child: iconWithText("Snappy Food", "assets/images/food.png"),
                    )),
                  ],
                ),

                Row(
                  children: [
                    Expanded(child: iconWithText("Snappy Classified", "assets/images/classified.png"),),
                    Expanded(child: iconWithText("Snappy Services", "assets/images/services.png"),),
                  ],
                ),

                Row(
                  children: [
                    Expanded(child: iconWithText("Parcel \& Courier", "assets/images/courier.png"),),
                    Expanded(child: Text(""))
                  ],
                )

                


              ],
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
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: Get.height*0.05,),
        Image.asset(imageUrl),
        SizedBox(height: Get.height*0.02,),
        Text(title,style: CustomTextStyle.smallBoldTextStyle1(),),
        SizedBox(height: Get.height*0.02,),

      ],
    );
  }

}
