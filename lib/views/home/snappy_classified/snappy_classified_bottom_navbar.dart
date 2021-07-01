import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/controllers/home/snappy_classified/snappy_classified_home_screen_controller.dart';
import 'package:client_app1/views/account/account_homescreen_view.dart';
import 'package:client_app1/views/chats/chat_home_screen_view.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_account/snappy_classified_my_account_view.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_home_screen_view.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_notification_view.dart';
import 'package:client_app1/views/home/snappy_food/snappy_food_home_screen.dart';
import 'package:client_app1/views/home/snappy_store/snappy_store_home_screen.dart';
import 'package:client_app1/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SnappyClassifiedBottomNavScreen extends StatefulWidget {
  @override
  _SnappyClassifiedBottomNavScreenState createState() => _SnappyClassifiedBottomNavScreenState();
}

class _SnappyClassifiedBottomNavScreenState extends State<SnappyClassifiedBottomNavScreen> {

  final List _screenList = [
    SnappyClassifiedHomeScreen(),
    ChatHomeScreen(),
    SnappyClassifiedNotificationView(),
    SnappyClassifiedMyAccountView()
  ];

  final SnappyClassifiedHomeScreenController _snappyClassifiedHomeScreenController = Get.put(SnappyClassifiedHomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return _screenList[_snappyClassifiedHomeScreenController.navIndex.value];
      }),
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: CustomBottomNavBar()
    );
  }
}






