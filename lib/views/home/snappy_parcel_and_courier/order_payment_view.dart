import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/checkout/payment_success_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ParcelAndCourierOrderPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Order Payment",),
              SizedBox(height: 30,),

              Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryDarkBlue,
                  shape: BoxShape.circle
                ),
                padding: EdgeInsets.all(10),
                child: Icon(Icons.credit_card,color: Colors.white,size: 35,),
              ),
              SizedBox(height: 5,),
              Text("Credit Card",style: CustomTextStyle.smallBoldTextStyle1(),),
              SizedBox(height: 20,),

              CustomRow(title1: "Service Fee",title2: "\$128",),
              CustomRow(title1: "Late Night Charge",title2: "\$128",),
              CustomRow(title1: "Moving Cart ",title2: "\$128",title3: "Additional Services",),
              CustomRow(title1: "Discount",title2: "\$128",title3: "Promo Code: 554dffd",),

              SizedBox(height: 20,),
              Divider(),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Total",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                  Spacer(),
                  Text("\$124.67",style: CustomTextStyle.ultraBoldTextStyle(color: AppColors.primaryDarkOrange),)
                ],
              ),

              Spacer(),
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Order Now",
                onTap: (){
                  Get.to(PaymentSuccessScreen(comingFromParcelScreen: true,));
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}



class CustomRow extends StatelessWidget {

  final String title1;
  final String title2;
  final String title3;
  CustomRow({this.title2,this.title1,this.title3});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          title3 == null ? Expanded(child: Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),)) :
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),),
                    Text(title3,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
                  ],
                ),
              ),
          Text(title2,style: CustomTextStyle.smallTextStyle1(),)
        ],
      ),
    );
  }
}
