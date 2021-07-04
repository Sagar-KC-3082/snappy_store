import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParcelAndCourierAddLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: CustomAppBarRowWithCustomIconWithNoSpacing(title: "Enter Destination",),
            ),
            SizedBox(height: 10,),

            Expanded(
              child: Stack(
                children: [
                  Image.asset("assets/images/big_map.png",width:Get.width,fit: BoxFit.fill,),
                  Positioned(
                    top: Get.height*0.3,
                    left: Get.width*0.6,
                    child: Image.asset("assets/images/indicator2.png"),
                  )
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: FullWidthButton(
                title: "Add Location",
                color: AppColors.primaryDarkOrange,
                maring: EdgeInsets.only(bottom:5),
                onTap: (){
                  Get.back();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
