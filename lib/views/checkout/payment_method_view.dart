import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/views/checkout/credit_card_payment/credit_card_info_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Payment",),
              SizedBox(height: 30,),

              PaymentWidget(imageUrl: "assets/images/credit_card.png",title: "Credit Card or Debit",),
              SizedBox(height: 10,),
              PaymentWidget(imageUrl: "assets/images/paypal.png",title: "Paypal",),


            ],
          ),
        ),
      ),
    );
  }
}


class PaymentWidget extends StatefulWidget {

  final String title;
  final String imageUrl;
  PaymentWidget({this.title, this.imageUrl});

  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: ()async{
        setState(() {
          _isTapped = !_isTapped;
        });
        await Future.delayed(Duration(milliseconds: 200),(){
          Navigator.push(context, MaterialPageRoute(builder:(context){return CreditCardInfoScreen();}));
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
            Text(widget.title)

          ],
        ),
      ),
    );
  }
}

