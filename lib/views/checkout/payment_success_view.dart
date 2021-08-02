import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/order_details_after_order.dart';
import 'package:client_app1/views/orders/order_home_screen_view.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PaymentSuccessScreen extends StatelessWidget {

  final bool comingFromParcelScreen;
  PaymentSuccessScreen({this.comingFromParcelScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/success.png",height: Get.height*0.15,width: Get.width*0.3,fit: BoxFit.cover,),
              Text("Success",style: CustomTextStyle.ultraBoldTextStyle(),),
              SizedBox(height: 10,),
              comingFromParcelScreen == true ? Text("Order ID : #65222",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.grey)) : Text("Thank you for shopping using Snappy Store",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
              SizedBox(height: 20,),
              comingFromParcelScreen == true ?
                  FullWidthButton(
                    color: AppColors.primaryDarkOrange,
                    title: "Order Details",
                    borderRadius: BorderRadius.circular(15),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context){return OrderDetailsAfterOrder();}));
                      },
                  ):
                  FullWidthButton(
                    color: AppColors.primaryDarkOrange,
                    title: "Back To Order",
                    borderRadius: BorderRadius.circular(5),
                    onTap: (){
                      Get.off(OrderHomeScreen());},
                  ),

            ],
          ),
        ),
      ),
    );
  }
}
