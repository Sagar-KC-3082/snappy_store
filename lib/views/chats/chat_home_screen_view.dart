import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/models/chats/chat_detail_model.dart';
import 'package:client_app1/models/chats/chat_list_model.dart';
import 'package:client_app1/widgets/chat_home_screen_widget.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChatHomeScreen extends StatelessWidget {

  final List<ChatListModel> _chatData = [
    ChatListModel(name: "Virat",lastMessage: "Hello Sir, Please drop the price",date: "June 22",imageUrl: "assets/images/user.jpg"),
    ChatListModel(name: "Christiana",lastMessage: "Hey man, Give my amount back because client didn't like your phone",date: "Aug 12",imageUrl: "assets/images/user1.png"),
    ChatListModel(name: "Emilia",lastMessage: "This is mic testing ",date: "Jan 30",imageUrl: "assets/images/user2.jpg"),
    ChatListModel(name: "Robert",lastMessage: "Hello Sir, Please drop the price",date: "March 1",imageUrl: "assets/images/user4.jpg"),
    ChatListModel(name: "Taylor",lastMessage: "Loki is awesome series man!!!",date: "Dec 07",imageUrl: "assets/images/user5.jpg"),
  ];

  final List<ChatDetailModel> _messageList = [
    ChatDetailModel(time: "10 : 34" , sentByMe: true , message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?"),
    ChatDetailModel(time: "12 : 01" , sentByMe: false , message: "I’m here for you, don’t worry. What symptoms are you experiencing?"),
    ChatDetailModel(time: "4 : 12" , sentByMe: true , message: "fever \n dry cough \n tiredness \n sore throat"),
    ChatDetailModel(time: "7 : 45" , sentByMe: false , message: "oh so sorry about that. do you have any underlying diseases?"),
    ChatDetailModel(time: "7 : 56" , sentByMe: false , message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?"),
    ChatDetailModel(time: "9 : 03" , sentByMe: true , message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?"),
    ChatDetailModel(time: "10 : 23" , sentByMe: true , message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?"),
    ChatDetailModel(time: "12 : 01" , sentByMe: false , message: "I’m here for you, don’t worry. What symptoms are you experiencing?"),
    ChatDetailModel(time: "4 : 12" , sentByMe: true , message: "fever \n dry cough \n tiredness \n sore throat"),
    ChatDetailModel(time: "7 : 45" , sentByMe: false , message: "oh so sorry about that. do you have any underlying diseases?"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding),
                child: CustomAppBarRowWithCustomIconWithNoSpacing(title: "My Chats",icon: Icon(Icons.more_vert),),
              ),
              SizedBox(height: Get.height*0.04,),

              Expanded(
                child: ListView.builder(
                    itemCount: _chatData.length,
                    itemBuilder: (context,index){
                      return ChatHomeScreenWidget(chatListModel: _chatData[index],messageList: _messageList,);
                    },
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
