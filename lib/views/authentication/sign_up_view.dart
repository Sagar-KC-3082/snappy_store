import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/authentication/sign_in_view.dart';
import 'package:client_app1/views/home/home_screen_view.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpView extends StatefulWidget {

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  final _formKey2 = GlobalKey<FormState>();
  bool _agrred = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey2,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height:20,),
                  Center(child: Text("Sign Up",style: CustomTextStyle.boldTextStyle(),)),
                  SizedBox(height: Get.height*0.07,),

                  Text("Full Name",style: CustomTextStyle.mediumTextStyle(),),
                  SizedBox(height: 10,),
                  CustomTextField(
                    validator: (value){
                      if(value==""){return "Name cannot be empty";}
                      else if (value.length < 5){return "Please provide your full name";}
                      else{return null;}
                    },),
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
                  SizedBox(height: 30),

                  Text("Confirm Password",style: CustomTextStyle.mediumTextStyle(),),
                  SizedBox(height: 10,),
                  CustomTextField(
                    obSecureText: true,
                    validator: (value){
                      if(value==""){return "Password cannot be empty";}
                      else if (value.length < 8){return "Please provide a valid password";}
                      else{return null;}
                    },),
                  SizedBox(height: Get.height*0.05,),


                  Row(
                    children: [
                      CustomInkWell(
                        onTap: (){
                          setState(() {
                            _agrred = !_agrred;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: _agrred==true? AppColors.primaryDarkOrange : Colors.white,
                              border: Border.all(color: _agrred==true? Colors.transparent : Colors.grey,),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: _agrred
                                ? Icon(Icons.check, size: 12.0, color: Colors.white,)
                                : Icon(Icons.check, size: 12.0, color: Colors.white,)
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("I agree to the terms and condition",style: CustomTextStyle.smallTextStyle1()),
                    ],
                  ),
                  SizedBox(height: 20,),


                  FullWidthButton(color: AppColors.primaryDarkBlue,title: "SIGN UP",onTap: (){
                    FocusScope.of(context).unfocus();
                    if(_formKey2.currentState.validate()){
                      Get.to(HomeScreen());
                    }
                  },),
                  SizedBox(height: Get.height*0.05,),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style: CustomTextStyle.mediumTextStyle()),
                        CustomInkWell(
                            onTap: (){Get.to(SignInView());},
                            child: Text(" Sign In",style: CustomTextStyle.boldMediumTextStyle())),

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
