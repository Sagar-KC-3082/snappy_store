import 'package:client_app1/views/account/account_homescreen_view.dart';
import 'package:client_app1/views/authentication/pre_login_view.dart';
import 'package:client_app1/views/checkout/deliver_to_view.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnappyClassifiedBottomNavScreen(),
    );
  }
}
