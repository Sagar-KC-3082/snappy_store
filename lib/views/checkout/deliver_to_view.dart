import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class DeliverToScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text("Deliver To"),
      ),
      body: Center(
        child: Text("Page Under Construction",style: CustomTextStyle.ultraBoldTextStyle(),),
      ),
    );
  }
}
