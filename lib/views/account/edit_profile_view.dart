import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/controllers/account/profile_controller.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EditProfile extends StatelessWidget {

  final String title;
  final List fieldInfo;
  EditProfile({this.title,this.fieldInfo});

  final TextEditingController _emailController =  TextEditingController();
  final TextEditingController _firstNameController =  TextEditingController();
  final TextEditingController _lastNameController =  TextEditingController();
  final TextEditingController _phoneController =  TextEditingController();
  final TextEditingController _currentPasswordController =  TextEditingController();
  final TextEditingController _newPasswordController1 =  TextEditingController();
  final TextEditingController _newPasswordController2 =  TextEditingController();
  final GlobalKey<FormState> _key6 = GlobalKey<FormState>();
  final ProfileController _profileController = Get.put(ProfileController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Form(
            key: _key6,
            child: SingleChildScrollView(
              child: Container(
                height: Get.height*0.93,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBarRowWithCustomIconWithNoSpacing(title: title),
                    SizedBox(height:40,),

                    Expanded(
                        child: ListView.builder(
                            itemCount: fieldInfo.length,
                            itemBuilder: (context,index){
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(fieldInfo[index],style: CustomTextStyle.smallBoldTextStyle1(),),
                                  SizedBox(height: 10,),
                                  fieldInfo[index] == "Choose Gender" ?

                                      DropdownButtonFormField(
                                        hint:Text(_profileController.gender.value),
                                        decoration:InputDecoration(
                                          border: InputBorder.none
                                        ),
                                        onChanged: (value){
                                          _profileController.gender.value  = value;
                                        },
                                        items: [
                                          DropdownMenuItem(child: Text("Male"),value: "Male",),
                                          DropdownMenuItem(child: Text("Female"),value: "Female",),
                                          DropdownMenuItem(child: Text("Others"),value: "Others",),
                                        ],
                                      ):

                                      CustomTextField(
                                        obSecureText: fieldInfo[0]=="Current Password" ? true : false,
                                        controller: fieldInfo[index] == "Change Email" ? _emailController : fieldInfo[index] == "Change Number" ? _phoneController : fieldInfo[index] == "First Name" ? _firstNameController : fieldInfo[index] == "Current Password" ? _currentPasswordController : fieldInfo[index] == "New Password" ? _newPasswordController1 : fieldInfo[index] == "New Password Again" ? _newPasswordController2 : _lastNameController,
                                        hintText: fieldInfo[index] == "Change Email" ? _profileController.email.value : fieldInfo[index] == "Change Number" ? _profileController.phoneNumber.value : fieldInfo[index] == "First Name" ? _profileController.userFirstName.value : fieldInfo[0]=="Current Password" ? "" : _profileController.userLastName.value,
                                        borderRadius: BorderRadius.circular(5),
                                        validator: (value){
                                          if(value.length==0){
                                            return "This Field cannot be empty";
                                          }
                                          if(fieldInfo[index]=="New Password Again" && _newPasswordController1.text != _newPasswordController2.text){
                                            return "Password didnot match";
                                          }
                                        },
                                      ),
                                  SizedBox(height: 10,),
                                  fieldInfo[0]=="Change Email" ? Text("We will send verification to your New Email",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),):Container()

                                ],
                              );
                            }
                        )
                    ),

                    FullWidthButton(
                      color: AppColors.primaryDarkOrange,
                      title: "Save",
                      borderRadius: BorderRadius.circular(8),
                      onTap: (){
                        if(_key6.currentState.validate()){
                          fieldInfo[0] == "Change Email" ? _profileController.email.value = _emailController.text :  fieldInfo[0] == "Change Number" ? _profileController.phoneNumber.value = _phoneController.text : print("");
                          if(fieldInfo[0]=="First Name"){
                            _profileController.userFirstName.value = _firstNameController.text;
                            _profileController.userLastName.value = _lastNameController.text;
                          }
                          Navigator.pop(context);
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



