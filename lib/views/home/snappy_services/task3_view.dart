import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_services/browse_taskers_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnappyServicesTask3Screen extends StatelessWidget {

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

                  CustomColorFullAppBar(title: "Task Option",),
                  SizedBox(height: 30,),

                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("TELL US THE DETAILS OF YOUR TASK",style: CustomTextStyle.smallBoldTextStyle1(),),
                              SizedBox(height:20),
                              Text("Start the conversation and tell your Tasker what you need done. This helps us show you only qualified and available Taskers for the job. Don't worry, you can edit this later.",style: CustomTextStyle.smallTextStyle1(),),

                              SizedBox(height:30),
                              CustomTextField(
                                borderRadius: BorderRadius.circular(8),
                                maxLines: 8,
                              ),
                              SizedBox(height:20),

                              Text("If you need two or more Taskers, please post additional tasks for each Tasker needed.",style: CustomTextStyle.smallTextStyle1(),),
                              SizedBox(height:30),

                              FullWidthButton(
                                color: AppColors.primaryDarkBlue,
                                title: "Continue",
                                borderRadius: BorderRadius.circular(0),
                                onTap: (){
                                  Get.to(SnappyServicesBrowseTaskersScreen());
                                },
                              )
                            ],
                          ),
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


class CustomContainer extends StatefulWidget {

  final String title;
  CustomContainer({this.title});

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {

  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical:10),
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 4,
              blurRadius: 8
          )
        ],
      ),
      child: Row(
        children: [
          Text(widget.title,style: CustomTextStyle.ultraSmallBoldTextStyle(),),
          Spacer(),
          CustomInkWell(
            onTap: (){
              setState(() {
                _isClicked = ! _isClicked;
              });
            },
            child: Container(
              height: 20,width: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: _isClicked == true ? Colors.blue : Colors.grey)
              ),
              child: _isClicked == true ? Icon(Icons.circle,color: Colors.blue,size: 12,) : Container(),
            ),
          )
        ],
      ),
    );
  }
}

