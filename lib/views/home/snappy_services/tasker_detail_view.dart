import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_services/snappy_servies_tasker_model.dart';
import 'package:client_app1/views/home/snappy_services/confirm_tasker_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:client_app1/widgets/snappy_classified_tasker_profile_widget.dart';
import 'package:get/get.dart';


class TaskerDetailScreen extends StatelessWidget {

  final SnappyServicesTaskerModel taskerDetail;
  TaskerDetailScreen({this.taskerDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomColorFullAppBar(title: "Details",),
            SizedBox(height: 10,),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    TaskerWidget(snappyServicesTaskerinfo: taskerDetail,),
                    SizedBox(height: 20,),

                    Text("About me",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 10),
                    Text("I'm very hard working, and I pay attention to detail while performing all tasks. I have prior work experience in the skill sets that I have listed.",style: CustomTextStyle.ultraSmallTextStyle(),),
                    SizedBox(height: 20,),

                    Text("Skills and Experience",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 10),
                    Text("Check my reviews! Need help carrying heavy items? I'm your guy. There's no task too great. Equipped with a furniture dolly, moving blankets, and straps, I aim to help!",style: CustomTextStyle.ultraSmallTextStyle(),),
                    SizedBox(height: 20,),

                    Text("Photos",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 10),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset("assets/images/user.jpg",height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset("assets/images/user4.jpg",height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset("assets/images/user2.jpg",height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset("assets/images/user3.jpg",height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                          ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset("assets/images/user4.jpg",height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,)),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Text("Reviews for Help Moving (56) ",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 10),

                    CustomInkWell(
                      onTap: (){
                        // Get.to(SnappyClassifiedOthersAccountScreen(snappyClassifiedOthersAccountModel: snappyClassifiedOthersAccountModel[1],));
                      }   ,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/user1.png"),
                            radius: 30,
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Vimala Pradhan",style: CustomTextStyle.smallTextStyle1(),),
                              Row(
                                children: [
                                  Icon(Icons.star,size: 20,color: Colors.amber,),Icon(Icons.star,size: 20,color: Colors.amber,),Icon(Icons.star,size: 20,color: Colors.amber,),Icon(Icons.star,size: 20,color: Colors.amber,),Icon(Icons.star,size: 20,color: Colors.amber,),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),


                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",style: CustomTextStyle.smallTextStyle1(),),
                    SizedBox(height: 20,),

                    FullWidthButton(
                      color: Color(0xFF1EA945),
                      title: "Select \& Continue",
                      borderRadius: BorderRadius.circular(0),
                      maring: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                      padding: EdgeInsets.symmetric(vertical: 18),
                      onTap: (){
                        Get.to(ConfrimTaskerScreen(imageUrl: taskerDetail.imageUrl,name: taskerDetail.name,));
                      },
                    ),
                  ],
                ),
              ),
            )
          ]
      ),
      ),
    );
  }
}

