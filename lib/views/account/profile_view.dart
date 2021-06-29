import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/controllers/account/profile_controller.dart';
import 'package:client_app1/views/account/edit_profile_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileScreen extends StatelessWidget {

  final ProfileController _profileController = Get.put(ProfileController());

  Widget userInfo(){
    return
      Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(
                "assets/images/user.jpg"
            ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomInkWell(
                  onTap: (){
                    Get.to(EditProfile(title: "Name",fieldInfo: ["First Name","Last Name"],));
                    },
                  child: Text(_profileController.userFirstName.value+ " " +_profileController.userLastName.value,style: CustomTextStyle.smallBoldTextStyle1(),)),
              SizedBox(height: 5,),
              Text(_profileController.email.value,style: CustomTextStyle.ultraSmallTextStyle(),),

            ],
          )
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Obx((){
            return Column(
              children: [
                CustomAppBarRowWithCustomIconWithNoSpacing(title: "Profile"),
                SizedBox(height:40,),

                userInfo(),
                SizedBox(height:40,),

                CustomImageTextRowWidget(title: "Gender",title1:_profileController.gender.value,imageUrl: "assets/images/gender.png",fieldInfo: ["Choose Gender"],),
                CustomImageTextRowWidget(title: "Email",title1:_profileController.email.value,imageUrl: "assets/images/email.png",fieldInfo: ["Change Email"],),
                CustomImageTextRowWidget(title: "Phone Number",title1:_profileController.phoneNumber.value,imageUrl: "assets/images/phone.png",fieldInfo: ["Change Number"],),
                CustomImageTextRowWidget(title: "Change Password",title1:_profileController.gender.value,imageUrl: "assets/images/password.png",fieldInfo: ["Current Password","New Password","New Password Again"],)


              ],
            );
          })
        ),
      ),
    );
  }
}



class CustomImageTextRowWidget extends StatefulWidget {

  final String title;
  final String title1;
  final String imageUrl;
  final List fieldInfo;
  CustomImageTextRowWidget({this.title, this.imageUrl,this.title1,this.fieldInfo});

  @override
  _CustomImageTextRowWidgetState createState() => _CustomImageTextRowWidgetState();
}

class _CustomImageTextRowWidgetState extends State<CustomImageTextRowWidget> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: ()async{
        setState(() {
          _isTapped = !_isTapped;
        });
        await Future.delayed(Duration(milliseconds: 200),(){
          Get.to(EditProfile(title: widget.title,fieldInfo: widget.fieldInfo,));
          setState(() {
            _isTapped = !_isTapped;
          });

        });
      },
      child: Container(
        color: _isTapped == true ? Color(0xFFEBF0FF): Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
        child: Row(
          children: [
            Image.asset(widget.imageUrl),
            SizedBox(width: 15,),
            Text(widget.title,style: CustomTextStyle.ultraSmallBoldTextStyle(),),
            Spacer(),
            Text(widget.title1,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),



          ],
        ),
      ),
    );
  }
}
