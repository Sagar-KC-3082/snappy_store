import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_checkbox.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_slider.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SnappyServicesFilterScreen extends StatefulWidget {
  @override
  _SnappyServicesFilterScreenState createState() => _SnappyServicesFilterScreenState();
}

class _SnappyServicesFilterScreenState extends State<SnappyServicesFilterScreen> {
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

                CustomColorFullAppBar(title: "Filter",),
                SizedBox(height: 30,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date",style: CustomTextStyle.smallBoldTextStyle1(),),
                      SizedBox(height: 10,),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CustomContainer(title: "Today",),
                            CustomContainer(title: "Within 3 Days",),
                            CustomContainer(title: "Within A Week or 2 Week",),
                            CustomContainer(title: "Within A Month",)
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),

                      Text("Time of day",style: CustomTextStyle.smallBoldTextStyle1(),),

                      ListView(
                        shrinkWrap: true,
                        children: [
                          CustomCheckBoxRow(title:"Morning (8am - 12pm)"),
                          CustomCheckBoxRow(title:"Afternoon (12pm - 5pm)"),
                          CustomCheckBoxRow(title:"Evening (5pm - 9:30pm)"),
                        ],
                      ),
                      SizedBox(height:20),

                      Text("Price",style: CustomTextStyle.smallBoldTextStyle1(),),
                      SizedBox(height:10),
                      
                      CustomSlider(),

                      SizedBox(height:30),
                      FullWidthButton(
                        color: AppColors.primaryDarkBlue,
                        title: "Apply Filter",
                        borderRadius: BorderRadius.circular(0),
                        onTap: (){
                          Get.back();
                        },
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

  String title;
  CustomContainer({this.title});

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return  CustomInkWell(
      onTap: (){
        setState(() {
          _isTapped = ! _isTapped;
        });
      },
      child: Container(
        child: Center(child: Text(widget.title,style: CustomTextStyle.ultraSmallTextStyle(color: _isTapped? Colors.white : Colors.black),)),
        decoration: BoxDecoration(
            color: _isTapped ? AppColors.primaryDarkBlue : Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)
        ),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 8),
      ),
    );
  }
}


class CustomCheckBoxRow extends StatelessWidget {

  final String title;
  CustomCheckBoxRow({this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSquareCheckBox(),
        Text(title,style: CustomTextStyle.smallTextStyle1(),)
      ],
    );
  }
}
