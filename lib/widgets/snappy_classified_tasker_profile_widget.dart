import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_services/snappy_servies_tasker_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskerWidget extends StatelessWidget {

  final SnappyServicesTaskerModel snappyServicesTaskerinfo ;
  TaskerWidget({this.snappyServicesTaskerinfo});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ClipRRect(
               borderRadius: BorderRadius.circular(12),
               child: Image.asset(snappyServicesTaskerinfo.imageUrl,height: Get.height*0.18,width: Get.width*0.27,fit: BoxFit.cover,)
           ),
           SizedBox(height: 10,),
           Container(
             padding: EdgeInsets.all(5),
             decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
             child: Text("Great Value",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.white),),
           )
         ],
       ),
        SizedBox(width: 15,),

        Expanded(
          child: Column(
            children: [
                Row(
                  children: [
                    Text(snappyServicesTaskerinfo.name,style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),overflow: TextOverflow.ellipsis,),
                    Spacer(),
                    Text(snappyServicesTaskerinfo.rate,style: CustomTextStyle.ultraSmallBoldTextStyle(),),
                  ],
                ),
                SizedBox(height: 5,),
                CustomRow(title1: snappyServicesTaskerinfo.tasks,title2: " Help Moving Tasks",),
                CustomRow(title1: snappyServicesTaskerinfo.reviews,title2: " Positive Reviews",),
                CustomRow(title1: snappyServicesTaskerinfo.reliable,title2: " Reliable",),
                CustomRow(title1: snappyServicesTaskerinfo.vehicles[0]+snappyServicesTaskerinfo.vehicles[1],title2: "Vehicles",),


            ],
          ),
        ),
        SizedBox(width: 15,),


      ],
    );
  }
}


class CustomRow extends StatelessWidget {

  final String title1;
  final String title2;
  CustomRow({this.title2,this.title1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
            Container(height: 20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFFDEF5FC)),),
            SizedBox(width: 10,),
            Text(title1,style: CustomTextStyle.smallTextStyle1(),),
            Expanded(child: Text(title2,style: CustomTextStyle.smallTextStyle1(),overflow: TextOverflow.ellipsis,))
        ],
      ),
    );
  }
}
