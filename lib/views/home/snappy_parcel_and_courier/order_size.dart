import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/parcel_and_courier/order_details_model.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/recipient.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParcelAndCourierOrderSize extends StatelessWidget {

  final List <ParcelAndCourierModel> _orderSizeDetails = [
    ParcelAndCourierModel(imageUrl: "assets/images/order1.png",title1: "Small",title2: "Max. 25 kg, 8 x 38 x 64 cm",title3: "Fits in an envelope"),
    ParcelAndCourierModel(imageUrl: "assets/images/parcel1.jpg",title1: "Medium",title2: "Max. 25 kg, 19 x 38 x 64 cm",title3: "Fits in an shoe box"),
    ParcelAndCourierModel(imageUrl: "assets/images/parcel2.jpg",title1: "Large",title2: "Max. 25 kg, 41 x 38 x 64 cm",title3: "Fits in an cardboard box"),
    ParcelAndCourierModel(imageUrl: "assets/images/parcel5.png",title1: "Custom",title2: "Max: 30kg or 300cm",title3: "Fits in an skid"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [

              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Order Size",),
              SizedBox(height: 30,),

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _orderSizeDetails.length,
                  itemBuilder: (context,index){
                    return OrderSizeWidget(parcelAndCourierModel: _orderSizeDetails[index],);
                  },
                ),
              ),

              SizedBox(height: 30,),
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Next",
                onTap: (){
                  Get.to(ParcelAndCourierRecipient());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}




class OrderSizeWidget extends StatefulWidget {

  final ParcelAndCourierModel parcelAndCourierModel;
  OrderSizeWidget({this.parcelAndCourierModel});

  @override
  _OrderSizeWidgetState createState() => _OrderSizeWidgetState();
}

class _OrderSizeWidgetState extends State<OrderSizeWidget> {

  bool _isSelected = false ;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        setState(() {
           _isSelected = ! _isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: _isSelected == true ? Colors.blue : Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2),offset: Offset(3,3), blurRadius: 5,spreadRadius: 3),
            ]
        ),
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),
        margin: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
        child: Row(
          children: [
            Image.asset(widget.parcelAndCourierModel.imageUrl,width: Get.width*0.3,height: Get.height*0.15,fit: BoxFit.fill,),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.parcelAndCourierModel.title1,style: CustomTextStyle.smallBoldTextStyle1(),),
                  SizedBox(height: 5,),
                  Text(widget.parcelAndCourierModel.title2,style: CustomTextStyle.smallTextStyle1(),),
                  SizedBox(height: 5,),
                  Text(widget.parcelAndCourierModel.title3,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
