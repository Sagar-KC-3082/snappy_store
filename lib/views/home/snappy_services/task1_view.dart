import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_services/task2_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnappyServicesTask1Screen extends StatelessWidget {

  final String title;
  SnappyServicesTask1Screen({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height*0.93,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                CustomColorFullAppBar(title: title,),
                SizedBox(height: 30,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("YOUR TASK LOCATION",style: CustomTextStyle.smallBoldTextStyle1(),),
                      SizedBox(height:20),

                      CustomTextField(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        hintText: "Enter street address",
                        borderRadius: BorderRadius.circular(8),
                      ),
                      SizedBox(height:15),

                      CustomTextField(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        hintText: "Enter street address",
                        borderRadius: BorderRadius.circular(8),
                      ),
                      SizedBox(height:30),

                      FullWidthButton(
                        color: AppColors.primaryDarkBlue,
                        title: "Continue",
                        borderRadius: BorderRadius.circular(0),
                        onTap: (){
                          Get.to(SnappyServicesTask2Screen());
                        },
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}
