import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_category_models.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_account/snappy_classified_ad_list_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnappyClassifiedMyAccountView extends StatelessWidget {

  final List<SnappyClassifiedCategoryModels> _snappyClassifiedItems = [SnappyClassifiedCategoryModels(name: "Audi Q7 for sale",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car.jpg"),SnappyClassifiedCategoryModels(name: "Audi Q7 for sale",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car2.jpg"),SnappyClassifiedCategoryModels(name: "Audi Q7 for sale",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car3.jpg")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: ListView(
            children: [

              CustomAppBarRowWithCustomIconWithNoSpacing(title: "My Account",),
              SizedBox(height:30,),

              Row(
                children: [
                  CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/images/user4.jpg"),),
                  SizedBox(width: 15,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Himalaya Dixit",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                        SizedBox(height: 2,),
                        Text("Active since : 22 June",style: CustomTextStyle.ultraSmallTextStyle(),)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),

              CustomRowContainer(title: "My Ads",snappyClassifiedItems: _snappyClassifiedItems,),
              CustomRowContainer(title: "Favourite Ads",snappyClassifiedItems: _snappyClassifiedItems,),
              CustomRowContainer(title: "Pending Ads",snappyClassifiedItems: _snappyClassifiedItems,),
              CustomRowContainer(title: "Expire Ads",snappyClassifiedItems: _snappyClassifiedItems,),
              CustomRowContainer(title: "Account Settings",),
              CustomRowContainer(title: "Logout",),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomRowContainer extends StatelessWidget {

  final String title;
  final List<SnappyClassifiedCategoryModels> snappyClassifiedItems;
  CustomRowContainer({this.title,this.snappyClassifiedItems});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        title != "Account Settings" && title != "Logout" ? Get.to(SnappyClassifiedAdListScreen(title: title,snappyClassifiedItems: snappyClassifiedItems,)) : print("hy");
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical:10),
            child: Row(
              children: [
                Text(title,style: CustomTextStyle.smallTextStyle1(),),
                Spacer(),
                Icon(Icons.navigate_next,color: Colors.grey,)
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}

