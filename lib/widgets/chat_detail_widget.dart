import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/chats/chat_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChatDetailWidget extends StatelessWidget {

  final ChatDetailModel chatDetailModel ;
  ChatDetailWidget({this.chatDetailModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left :chatDetailModel.sentByMe == true ? Get.width*0.3 : AppConstants.screenHorizontalPadding ,bottom: 12 , right: chatDetailModel.sentByMe == true ? AppConstants.screenHorizontalPadding : Get.width*0.3 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                color:chatDetailModel.sentByMe == true ? AppColors.primaryDarkOrange : AppColors.primaryDarkBlue,
                borderRadius: BorderRadius.circular(8)
            ),

            padding:  EdgeInsets.symmetric(horizontal: 15,vertical:15),
            child: Text(chatDetailModel.message,style: CustomTextStyle.smallTextStyle1(color: Colors.white),),
          ),
          SizedBox(height: 3,),
          Text("${chatDetailModel.time}    ",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),)
        ],
      ),
    );
  }
}
