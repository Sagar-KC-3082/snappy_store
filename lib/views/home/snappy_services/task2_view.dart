import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_services/task3_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnappyServicesTask2Screen extends StatelessWidget {

  final List _taskOptionList = ["Small -Est 1 hour","Medium -Est 2-3 hour","Large -Est 4+ hour"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CustomColorFullAppBar(title: "Task Option",),
              SizedBox(height: 30,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("HOW BIG IS YOUR TASK?",style: CustomTextStyle.smallBoldTextStyle1(),),
                    SizedBox(height:20),

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: _taskOptionList.length,
                      itemBuilder: (context,index){
                        return CustomContainer(
                          title: _taskOptionList[index],
                        );
                      },
                    ),

                    SizedBox(height:30),

                    FullWidthButton(
                      color: AppColors.primaryDarkBlue,
                      title: "Continue",
                      borderRadius: BorderRadius.circular(0),
                      onTap: (){
                        Get.to(SnappyServicesTask3Screen());
                      },
                    )
                  ],
                ),
              )

            ],
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

