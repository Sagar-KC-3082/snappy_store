import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/authentication/sign_up_view.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgotPasswordView extends StatelessWidget {

  final _formKey3 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey3,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(child: Image.asset("assets/images/splashImage.png",height: Get.height*0.3,width: Get.width*0.5,)),

                  Center(child: Text("Forgot Password",style: CustomTextStyle.boldTextStyle(),)),
                  SizedBox(height: 20,),
                  Center(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Enter your email and we’ll send you instructions on how to reset your password",style: CustomTextStyle.smallTextStyle1(),textAlign: TextAlign.center,),
                  ),),
                  SizedBox(height: 35,),

                  Text("Email",style: CustomTextStyle.mediumTextStyle(),),
                  SizedBox(height: 10,),
                  CustomTextField(
                    validator: (value){
                      if(value==""){return "Email cannot be empty";}
                      else if (value.length < 8){return "Please provide a valid email";}
                      else{return null;}
                    },),
                  SizedBox(height: Get.height*0.05,),

                  FullWidthButton(color: AppColors.primaryDarkBlue,title: "SEND",onTap: (){
                    FocusScope.of(context).unfocus();
                    if(_formKey3.currentState.validate()){
                      // Get.to(TempHome());
                    }
                  },),
                  SizedBox(height: Get.height*0.07,),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",style: CustomTextStyle.mediumTextStyle()),
                        CustomInkWell(
                            onTap: (){Get.to(SignUpView());},
                            child: Text(" Sign Up",style: CustomTextStyle.boldMediumTextStyle())),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
