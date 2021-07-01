import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class SnappyClassifiedNotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [

              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Notifications",icon: Icon(Icons.notifications_active),),
              SizedBox(height:30),

              Expanded(
                child: ListView(
                  children: [
                      Column(
                        children: [
                          Text("1 July 2020",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                          CustomNotificationContainer(),
                          CustomNotificationContainer()
                        ],
                      ),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Text("12 June 2020",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                        CustomNotificationContainer(),
                        CustomNotificationContainer(),
                        CustomNotificationContainer(),
                        CustomNotificationContainer()
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


class CustomNotificationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey.withOpacity(0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('01:32 PM',style: CustomTextStyle.ultraSmallTextStyle(color: Colors.blue),),
              Spacer(),
              Container(decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),height: 10,width: 10,)
            ],
          ),
          SizedBox(height: 5,),

          Text("128 gb good condition IPhone Max available at just Rs 99,000 with all the paper works and accessories",style: CustomTextStyle.smallBoldTextStyle1(),),
          SizedBox(height: 5,),

          Text("Make offer now to get doorstep delivery",style: CustomTextStyle.ultraSmallTextStyle(),),
          SizedBox(height: 5,),

          Row(
            children: [
              Spacer(),
              Text("View",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.blue),)
            ],
          )
        ],
      ),
    );
  }
}
