import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/orders/order_details_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Order",),
              SizedBox(height: Get.height*0.045,),

              CustomInkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context){return OrderDetailsScreen();}));
                  },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.withOpacity(0.2))
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("LQNSU346JK",style: CustomTextStyle.smallBoldTextStyle1()),
                          Spacer(),
                          Image.asset("assets/images/message.png"),
                          SizedBox(width: 10,),
                          Image.asset("assets/images/call.png")
                        ],
                      ),
                      SizedBox(height: 10,),

                      Text("Order at Lafyuu : August 1, 2017",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
                      SizedBox(height: 15,),

                      Row(
                        children: [
                          Text("Order Status",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
                          Spacer(),
                          Text("Shipping",style: CustomTextStyle.ultraSmallTextStyle(),),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Text("Items",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
                          Spacer(),
                          Text("2 Items Purchased",style: CustomTextStyle.ultraSmallTextStyle(),),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Text("Price",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
                          Spacer(),
                          Text("\$ 299.88",style: CustomTextStyle.ultraSmallBoldTextStyle(),),
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
