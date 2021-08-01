import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/chats/chat_detail_model.dart';
import 'package:client_app1/models/chats/chat_list_model.dart';
import 'package:client_app1/views/chats/chat_detail_screen_view.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChatHomeScreenWidget extends StatelessWidget {

  final ChatListModel chatListModel ;
  final  List<ChatDetailModel> messageList ;

  ChatHomeScreenWidget({this.chatListModel,this.messageList});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatDetailScreen(messageList: messageList,chatListModel: chatListModel,)));
        },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
        color: Colors.grey.withOpacity(0.05),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(chatListModel.imageUrl),
            ),
            SizedBox(width: 15,),

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(chatListModel.name,style: CustomTextStyle.smallBoldTextStyle1(),),
                        Text(chatListModel.lastMessage,style: CustomTextStyle.ultraSmallTextStyle(),overflow: TextOverflow.ellipsis,),

                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(chatListModel.date,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey.withOpacity(0.5)),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
