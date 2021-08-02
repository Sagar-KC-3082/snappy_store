import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/controllers/home/parcel_and_courier/bottom_nav_controller.dart';
import 'package:client_app1/views/home/snappy_classified/notification_view.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/bottom_nav_screen.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/snappy_parcel_bottom_nav_bar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {

  final ParcelAndCourierController _parcelAndCourierController = Get.put(ParcelAndCourierController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/Vector.png",fit: BoxFit.cover,width: double.infinity,),
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user4.jpg"),
                    radius: 40,
                  ),
                  SizedBox(height: 10,),
                  Text("Himalayan Das",style: CustomTextStyle.boldMediumTextStyle(color: Colors.white,fontFamily: "PoppinsRegular"),)
                ],
              )
            ],
          ),
          SizedBox(height: Get.height*0.08,),

          CustomInkWell(
              onTap: (){
                _parcelAndCourierController.index.value = 1;
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyParcelBottomNavScreen()));
                },
              child: CustomRow(title: "Place Order",icon: Icon(Icons.shopping_cart,color: AppColors.primaryDarkOrange,),)
          ),
          CustomInkWell(
              onTap: (){
                _parcelAndCourierController.index.value = 0;
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyParcelBottomNavScreen()));
                },
              child: CustomRow(title: "My Orders",icon: Icon(Icons.history,color: AppColors.primaryDarkOrange,),)
          ),
          CustomInkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyClassifiedNotificationView()));
                },
              child: CustomRow(title: "Notification",icon: Icon(Icons.notifications_none,color: AppColors.primaryDarkOrange,),)),
          CustomRow(title: "Help \& Feedback",icon: Icon(Icons.chat,color: AppColors.primaryDarkOrange,),),
          CustomRow(title: "Settings",icon: Icon(Icons.settings,color: AppColors.primaryDarkOrange,),)


        ],
      )
    );
  }
}



class CustomRow extends StatelessWidget {

  final String title;
  final Icon icon;

  CustomRow({this.icon,this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 20,),
              Text(title,style: CustomTextStyle.mediumTextStyle(),)
            ],
          ),
        ],
      ),
    );
  }
}
