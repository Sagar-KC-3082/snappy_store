import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/views/checkout/credit_card_payment/add_credit_card_view.dart';
import 'package:client_app1/views/checkout/payment_success_view.dart';
import 'package:client_app1/widgets/credit_card_widget.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';


class CreditCardInfoScreen extends StatelessWidget {

  List _colorList = [Color(0xFF4960AC),Colors.red,Colors.greenAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Choose Card",icon: Icon(Icons.add,color: Colors.blue,),onTap: (){Get.to(AddCreditCard());},),
              SizedBox(height: 30,),

              Container(
                height: Get.height*0.3,
                child: Swiper(
                  pagination: new SwiperPagination(),
                    itemCount: 3,
                    itemBuilder: (context,index){
                      return CreditCardWidget(color:_colorList[index],);
                    },
                ),
              ),

              Spacer(),

              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Pay \$ 765.99",
                borderRadius: BorderRadius.circular(8),
                onTap: (){
                  Get.to(PaymentSuccessScreen());
                },
              )

            ],
          ),
        )
      ),
    );
  }
}
