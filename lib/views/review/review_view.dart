import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/home_screen_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ReviewScreen extends StatelessWidget {

  final _formKey6 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey6,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: SingleChildScrollView(
              child: Container(
                // height: Get.height*0.93,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBarRowWithCustomIconWithNoSpacing(title: "Provide Review",),
                    SizedBox(height: Get.height*0.045,),

                    Text("Please write Overall level of satisfaction with your shipping / Delivery Service",style: CustomTextStyle.smallBoldTextStyle1(),),
                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber,size: 30,),Icon(Icons.star,color: Colors.amber,size: 30,),Icon(Icons.star,color: Colors.amber,size: 30,),Icon(Icons.star,color: Colors.amber,size: 30,),Icon(Icons.star,color: Colors.grey.withOpacity(0.3),size: 30,),
                        SizedBox(width: 10,),
                        Text("4/5",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.grey),)

                      ],
                    ),
                    SizedBox(height: 30,),

                    Text("Write Your Review",style: CustomTextStyle.smallBoldTextStyle1(),),
                    SizedBox(height: 20,),

                    CustomTextField(
                      validator: (value){
                        if(value==""){return "This field cannot be empty";}
                      },
                      borderRadius: BorderRadius.circular(8),
                      maxLines: 7,
                      hintText: "Write your review here",
                    ),
                    SizedBox(height: 30,),

                    Text("Add Photo",style: CustomTextStyle.smallBoldTextStyle1(),),
                    SizedBox(height: 20,),
                    Container(
                      height: Get.height*0.1,width: Get.width*0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.withOpacity(0.2))
                      ),
                      child: Icon(Icons.add,size: 30,color: Colors.grey,),
                    ),
                    SizedBox(height: 30,),


                    Text("Tip",style: CustomTextStyle.smallBoldTextStyle1(),),
                    SizedBox(height: 20,),

                    CustomTextField(
                      validator: (value){
                        if(value==""){return "This field cannot be empty";}
                      },
                      borderRadius: BorderRadius.circular(8),
                      hintText: "\$ 10.99",
                    ),
                    SizedBox(height: 30,),

                    FullWidthButton(
                      color: AppColors.primaryDarkOrange,
                      title: "Submit",
                      borderRadius: BorderRadius.circular(5),
                      onTap: (){
                        if(_formKey6.currentState.validate()){
                          Get.to(HomeScreen());
                        }
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
