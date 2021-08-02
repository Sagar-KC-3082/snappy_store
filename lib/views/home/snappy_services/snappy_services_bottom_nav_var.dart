import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/views/chats/chat_home_screen_view.dart';
import 'package:client_app1/views/home/snappy_classified/notification_view.dart';
import 'package:client_app1/views/home/snappy_services/home_screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class SnappyServicesBottomNavScreen extends StatelessWidget {

  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      padding: NavBarPadding.symmetric(vertical:6),
      confineInSafeArea: true,
      backgroundColor: AppColors.primaryDarkOrange, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: false, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.simple, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      SnappyServicesHomeScreen(),
      SnappyClassifiedNotificationView(),
      ChatHomeScreen(),
    ];
  }


  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(Icons.home),
          title: ("Home"),
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          titleStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 12)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.notifications_active_outlined),
          title: ("Notification"),
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          titleStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 12)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.chat),
          title: ("Chat"),
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          titleStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 12)
      ),
    ];
  }

}

