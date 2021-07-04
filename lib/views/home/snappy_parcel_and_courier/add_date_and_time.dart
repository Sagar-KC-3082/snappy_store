import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/order_size.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/date_time_widget.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ParcelAndCourierAddLocationScreenAddDateTimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Set Date \& Time",),
              SizedBox(height: 30,),

              Text("Pickup Date and Time",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
              SizedBox(height: 15),
              Row(
                children: [
                  Text("11 Feb 2021",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                  Spacer(),
                  Icon(Icons.calendar_today,size: 20,color: Colors.grey,)
                ],
              ),
              SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DateTimeSingleWidget(date: "11",day: "Mon",selected: true,),
                    DateTimeSingleWidget(date: "12",day: "Tue",selected: false,),
                    DateTimeSingleWidget(date: "13",day: "Wed",selected: false,),
                    DateTimeSingleWidget(date: "14",day: "Thrus",selected: false,),
                    DateTimeSingleWidget(date: "15",day: "Wed",selected: false,),
                    DateTimeSingleWidget(date: "16",day: "Fri",selected: false,),
                    DateTimeSingleWidget(date: "17",day: "Sar",selected: false,),
                    DateTimeSingleWidget(date: "18",day: "Sun",selected: false,),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Text("Pickup Time",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                  SizedBox(width: 25,),
                  Container(
                      width: 120,
                      child: CustomDropDown())
                ],
              ),
              SizedBox(height:Get.height*0.07,),

              Text("Drop off Date and Time",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
              SizedBox(height: 15),
              Row(
                children: [
                  Text("11 Feb 2021",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                  Spacer(),
                  Icon(Icons.calendar_today,size: 20,color: Colors.grey,)
                ],
              ),
              SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DateTimeSingleWidget(date: "11",day: "Mon",selected: false,),
                    DateTimeSingleWidget(date: "12",day: "Tue",selected: false,),
                    DateTimeSingleWidget(date: "13",day: "Wed",selected: true,),
                    DateTimeSingleWidget(date: "14",day: "Thrus",selected: false,),
                    DateTimeSingleWidget(date: "15",day: "Wed",selected: false,),
                    DateTimeSingleWidget(date: "16",day: "Fri",selected: false,),
                    DateTimeSingleWidget(date: "17",day: "Sar",selected: false,),
                    DateTimeSingleWidget(date: "18",day: "Sun",selected: false,),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Text("Pickup Time",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                  SizedBox(width: 25,),
                  Container(
                      width: 120,
                      child: CustomDropDown())
                ],
              ),
              SizedBox(height: 30,),


              FullWidthButton(
                title: "Next",
                color: AppColors.primaryDarkOrange,
                maring: EdgeInsets.only(bottom:5),
                onTap: (){
                  Get.to(ParcelAndCourierOrderSize());
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}



class CustomDropDown extends StatefulWidget {
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  String _selectedItem = "10:30 Am";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        border: InputBorder.none
      ),
        items: [
          DropdownMenuItem(child: Text("10:30 Am",style: CustomTextStyle.smallTextStyle1(),),value: "10:30 Am",),
          DropdownMenuItem(child: Text("11:30 Am",style: CustomTextStyle.smallTextStyle1(),),value: "11:30 Am",),
          DropdownMenuItem(child: Text("12:30 Am",style: CustomTextStyle.smallTextStyle1(),),value: "12:30 Am",),
          DropdownMenuItem(child: Text("01:30 Pm",style: CustomTextStyle.smallTextStyle1(),),value: "01:30 Pm",)
        ],
        onChanged: (value){
          setState(() {
            _selectedItem = value;
          });
        },
        value: _selectedItem,
    );
  }
}

