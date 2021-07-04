import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/order_details.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParcelAndCourierRecipient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Recipient",),
              
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Image.asset("assets/images/box.png",height: Get.height*0.3,),
                    SizedBox(height: 20,),

                    CustomColumnWithTextField(title: "Name",hintText: "",),
                    CustomColumnWithTextField(title: "Phone Number or Email",hintText: "",),
                    CustomColumnWithTextField(title: "Block/Floor/Room/Order ID/Others",hintText: "",),
                    SizedBox(height: 20,),

                    FullWidthButton(
                      color: AppColors.primaryDarkOrange,
                      title: "Next",
                      onTap: (){
                        FocusScope.of(context).unfocus();
                        Get.to(ParcelAndCourierOrderDetails());
                      },
                    )

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





class CustomColumnWithTextField extends StatelessWidget {

  final String title;
  final String hintText;
  final int maxLines;
  CustomColumnWithTextField({this.title,this.hintText,this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(title,style: CustomTextStyle.boldMediumTextStyle(),),
        SizedBox(height: 10,),

        CustomTextField(
          maxLines: maxLines ?? 1,
          hintText: hintText,
          borderRadius: BorderRadius.circular(8),
        ),
        SizedBox(height: 20,),

      ],
    );
  }
}