import 'package:client_app1/views/authentication/pre_login_view.dart';
import 'package:client_app1/views/home/home_screen_view.dart';
import 'package:client_app1/views/home/snappy_store/snappy_store_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.rightToLeftWithFade,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
