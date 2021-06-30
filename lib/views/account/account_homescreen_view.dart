import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/account/profile_view.dart';
import 'package:client_app1/views/checkout/deliver_to_view.dart';
import 'package:client_app1/views/checkout/payment_method_view.dart';
import 'package:client_app1/views/orders/order_home_screen_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AccountHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Account",hideBackButton: true,),
              SizedBox(height: 30,),

              CustomImageTextRowWidget(imageUrl: "assets/images/user.png",title: "Profile",ontap: (){Get.to(ProfileScreen());},),
              CustomImageTextRowWidget(imageUrl: "assets/images/bag.png",title: "Order",ontap: (){Get.to(OrderHomeScreen());},),
              CustomImageTextRowWidget(imageUrl: "assets/images/location.png",title: "Address",ontap: (){Get.to(DeliverToScreen());},),
              CustomImageTextRowWidget(imageUrl: "assets/images/credit_card.png",title: "Payment",ontap: (){Get.to(PaymentMethod());},),

            ],
          ),
        ),
      ),
    );
  }
}





class CustomImageTextRowWidget extends StatefulWidget {

  final String title;
  final String imageUrl;
  final Function ontap;
  CustomImageTextRowWidget({this.title, this.imageUrl,this.ontap});

  @override
  _CustomImageTextRowWidgetState createState() => _CustomImageTextRowWidgetState();
}

class _CustomImageTextRowWidgetState extends State<CustomImageTextRowWidget> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: ()async{
        setState(() {
          _isTapped = !_isTapped;
        });
        await Future.delayed(Duration(milliseconds: 200),(){
          widget.ontap();
          setState(() {
            _isTapped = !_isTapped;
          });

        });
      },
      child: Container(
        color: _isTapped == true ? Color(0xFFEBF0FF): Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
        child: Row(
          children: [
            Image.asset(widget.imageUrl),
            SizedBox(width: 15,),
            Text(widget.title,style: CustomTextStyle.ultraSmallBoldTextStyle(),),

          ],
        ),
      ),
    );
  }
}
