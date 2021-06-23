import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/authentication/forgot_password_view.dart';
import 'package:client_app1/views/authentication/sign_up_view.dart';
import 'package:client_app1/views/home/home_screen_view.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignInView extends StatelessWidget {

  final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey1,
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

                  Text("Welcome back to Login",style: CustomTextStyle.boldTextStyle(),),
                  SizedBox(height: 30,),

                  Text("Email / Mobile number",style: CustomTextStyle.mediumTextStyle(),),
                  SizedBox(height: 10,),
                  CustomTextField(
                    validator: (value){
                      if(value==""){return "Email cannot be empty";}
                      else if (value.length < 8){return "Please provide a valid email";}
                      else{return null;}
                  },),
                  SizedBox(height: 30,),

                  Text("Password",style: CustomTextStyle.mediumTextStyle(),),
                  SizedBox(height: 10,),
                  CustomTextField(
                    obSecureText: true,
                    validator: (value){
                      if(value==""){return "Password cannot be empty";}
                      else if (value.length < 8){return "Please provide a valid password";}
                      else{return null;}
                  },),
                  SizedBox(height: Get.height*0.05,),

                  FullWidthButton(color: AppColors.primaryDarkBlue,title: "SIGN IN",onTap: (){
                    FocusScope.of(context).unfocus();
                    if(_formKey1.currentState.validate()){
                      Get.to(HomeScreen());
                    }
                  },),
                  SizedBox(height: Get.height*0.05,),

                  Center(child: CustomInkWell(
                      onTap: (){Get.to(ForgotPasswordView());},
                      child: Text("FORGOT PASSWORD",style: CustomTextStyle.boldMediumTextStyle(),))),
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
