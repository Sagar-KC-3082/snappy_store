import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddCreditCard extends StatelessWidget {

  final GlobalKey<FormState> _key5 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Form(
          key: _key5,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: SingleChildScrollView(
              child: Container(
                height: Get.height*0.93,
                child: Column(
                  children: [
                    CustomAppBarRowWithCustomIconWithNoSpacing(title: "Add Card"),
                    SizedBox(height: 30,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Text("Card Number",style: CustomTextStyle.smallBoldTextStyle1(),),
                        SizedBox(height: 10,),
                        CustomTextField(
                          hintText: "Enter Card Number",
                          borderRadius: BorderRadius.circular(5),
                          validator: (value){
                            if(value.length==0){
                              return "This Field cannot be empty";
                            }
                          },
                        ),
                        SizedBox(height: Get.height*0.035,),
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Expiration Date",style: CustomTextStyle.smallBoldTextStyle1(),),
                              SizedBox(height: 10,),
                              CustomTextField(
                                hintText: "Expiration Date",
                                borderRadius: BorderRadius.circular(5),
                                validator: (value){
                                  if(value.length==0){
                                    return "This Field cannot be empty";
                                  }
                                },
                              ),
                              SizedBox(height: Get.height*0.035,),
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Security Code",style: CustomTextStyle.smallBoldTextStyle1(),),
                              SizedBox(height: 10,),
                              CustomTextField(
                                hintText: "Security Code",
                                borderRadius: BorderRadius.circular(5),
                                validator: (value){
                                  if(value.length==0){
                                    return "This Field cannot be empty";
                                  }
                                },
                              ),
                              SizedBox(height: Get.height*0.035,),
                            ],
                          ),
                        ),

                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Text("Card Holder",style: CustomTextStyle.smallBoldTextStyle1(),),
                        SizedBox(height: 10,),
                        CustomTextField(
                          hintText: "Enter Card Holder Name",
                          borderRadius: BorderRadius.circular(5),
                          validator: (value){
                            if(value.length==0){
                              return "This Field cannot be empty";
                            }
                          },
                        ),
                        SizedBox(height: Get.height*0.035,),
                      ],
                    ),
                    Spacer(),

                    FullWidthButton(
                      color: AppColors.primaryDarkOrange,
                      title: "Add Card",
                      borderRadius: BorderRadius.circular(5),
                      onTap: (){
                        _key5.currentState.validate() ?
                        Get.back() : print("InCorrect");
                      },
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
