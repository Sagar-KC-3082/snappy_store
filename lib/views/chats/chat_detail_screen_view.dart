import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/chats/chat_detail_model.dart';
import 'package:client_app1/models/chats/chat_list_model.dart';
import 'package:client_app1/widgets/chat_detail_widget.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChatDetailScreen extends StatelessWidget {

  final  List<ChatDetailModel> messageList ;
  final ChatListModel chatListModel;
  ChatDetailScreen({this.messageList,this.chatListModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: Row(
                children: [
                  CustomInkWell(
                      onTap: (){Get.back();},
                      child: Icon(Icons.arrow_back_ios,color: Colors.grey,size: 18,)
                  ),
                  SizedBox(width:5,),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(chatListModel.imageUrl),
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Text(chatListModel.name,style: CustomTextStyle.mediumTextStyle(),),),
                  Container(
                    decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.call,color: Colors.white,size: 15,),
                  )


                ],
              ),
            ),
            SizedBox(height: 20,),

            Expanded(child: ListView.builder(
              shrinkWrap: true,
              itemCount: messageList.length,
              itemBuilder: (context,index){
                return ChatDetailWidget(
                  chatDetailModel: messageList[index],
                );
              },
            ),),

            Container(
              color: Colors.grey.withOpacity(0.1),
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 10,),
                  Expanded(
                    child: CustomTextField(
                      hintText: "Write a message",
                      contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.mic)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
