import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/controllers/home/snappy_services/confirm_task_controller.dart';
import 'package:client_app1/views/checkout/payment_method_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_checkbox.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ConfrimTaskerScreen extends StatelessWidget {

  final String imageUrl;
  final String name;
  ConfrimTaskerScreen({this.imageUrl,this.name});

  final ConfirmTaskController _controller = Get.put(ConfirmTaskController());

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

                  CustomColorFullAppBar(title: "Confirm Details",),
                  SizedBox(height: 10,),

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(imageUrl),
                                ),
                                SizedBox(height: 10,),
                                Text("Cleaning",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                                SizedBox(height: 5,),
                                Text(name,style: CustomTextStyle.smallTextStyle1(),),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/question.png",height: 20,width: 20,),
                                    SizedBox(width: 3,),
                                    Text("What to expect?",style: CustomTextStyle.smallTextStyle1(color: Colors.green),)
                                  ],
                                ),
                                SizedBox(height: 30,),

                                IconText(icon: Icon(Icons.date_range),text: "Tuesday, June 15 at 12:45 pm",),
                                IconText(icon: Icon(Icons.location_on_outlined),text: "Chicago, USA",),
                                IconText(icon: Icon(Icons.timer),text: "Medium - Est 3 hours",),
                                IconText(icon: Icon(Icons.edit),text: "Edit Task",),
                                SizedBox(height: 30,),

                                Row(
                                  children: [
                                    Text("Hourly Rate",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                                    Spacer(),
                                    Text("\$ 45.56/hr",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular") )
                                  ],
                                ),
                                SizedBox(height: 10,),

                                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",style: CustomTextStyle.smallTextStyle1(),),
                                SizedBox(height: 5,),
                                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",style: CustomTextStyle.smallTextStyle1(),),
                                SizedBox(height: 30,),

                                Row(children: [Text("Review your task description",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),],),
                                SizedBox(height: 10,),
                                CustomTextField(
                                  maxLines: 8,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                SizedBox(height: 30,),

                                Row(children: [Text("Select a frequency",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),],),
                                SizedBox(height: 10,),
                                Text("Save time and money by setting up a repeat cleaning with your Tasker.",style: CustomTextStyle.smallTextStyle1(),),
                                SizedBox(height: 30,),

                                CustomCheckboxText(title1:"Just once",),
                                CustomCheckboxText(title1:"Weekly",title2: "Save 15%",),
                                CustomCheckboxText(title1:"Every 2 weeks",title2: "Save 20% - Most Popular",),
                                CustomCheckboxText(title1:"Every 2 weeks",title2: "Save 5%",),
                                SizedBox(height: 30,),

                                FullWidthButton(
                                   color: Color(0xFF1EA945),
                                   title: "Select \& Continue",
                                   borderRadius: BorderRadius.circular(0),
                                   maring: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                                   padding: EdgeInsets.symmetric(vertical: 18),
                                   onTap: (){
                                    _controller.alertSeen.value == true ?
                                    Get.to(PaymentMethod()) :
                                    showDialog(
                                        context: context,
                                        builder: (context){
                                          return Dialog(
                                              child:AlertMessage()
                                          );
                                        }
                                    );
                                   },
                                 )
                              ],
                            )
                        ],
                      ),
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


class IconText extends StatelessWidget {

  final Icon icon;
  final String text;
  IconText({this.text,this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
      child: Row(
        children: [
          icon,
          SizedBox(width: 10,),
          Text(text,style: CustomTextStyle.smallTextStyle1(),)
        ],
      ),
    );
  }
}


class CustomCheckboxText extends StatelessWidget {

  final String title1;
  final String title2;
  CustomCheckboxText({this.title1,this.title2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomCheckBox(),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),),
              title2 == null ? Container() : Text(title2,style: CustomTextStyle.smallTextStyle1(),)
            ],
          )
        ],
      ),
    );
  }
}

class AlertMessage extends StatelessWidget {

  final ConfirmTaskController _controller = Get.put(ConfirmTaskController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Spacer(),
              Text("What To Expect",style: CustomTextStyle.mediumTextStyle(),),
              Spacer(),
              CustomInkWell(
                onTap: (){
                  _controller.alertSeen.value = true;
                  Navigator.pop(context);
                  },
                child: Icon(Icons.close),
              )
            ],
          ),
          SizedBox(height: 5,),

          Container(
            height: Get.height*0.15,
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey.withOpacity(0.3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/mech2.png")
              ],
            ),
          ),
          SizedBox(height: 15,),

          Text('Bedrooms and Common Areas',style: CustomTextStyle.smallTextStyle1(),),
          SizedBox(height:5,),
          CustomRow(title: "Surfaces dusted and wiped",),
          CustomRow(title: "Floors cleaned (Vacumed if possible",),
          CustomRow(title: "Basic Organization",),
          CustomRow(title: "All trash removed and plastic bags replaced",),
          SizedBox(height: 15,),

          Text('Bedrooms and Common Areas',style: CustomTextStyle.smallTextStyle1(),),
          SizedBox(height:5,),
          CustomRow(title: "Surfaces dusted and wiped",),
          CustomRow(title: "Floors cleaned (Vacumed if possible",),
          CustomRow(title: "Basic Organization",),
          CustomRow(title: "All trash removed and plastic bags replaced",),
          SizedBox(height: 15,),

          Text('Bedrooms and Common Areas',style: CustomTextStyle.smallTextStyle1(),),
          SizedBox(height:5,),
          CustomRow(title: "Surfaces dusted and wiped",),
          CustomRow(title: "Floors cleaned (Vacumed if possible",),
          CustomRow(title: "Basic Organization",),
          CustomRow(title: "All trash removed and plastic bags replaced",),
          SizedBox(height: 15,),


        ],
      ),
    );
  }
}


class CustomRow extends StatelessWidget {
  final String title;
  CustomRow({this.title});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Icon(Icons.circle,size: 10,),
          SizedBox(width:5,),
          Text(title)
        ],
      ),
    );
  }
}
