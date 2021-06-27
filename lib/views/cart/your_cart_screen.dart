import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/cart/cart_model.dart';
import 'package:client_app1/views/checkout/deliver_to_view.dart';
import 'package:client_app1/widgets/cart_item_widget.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class YourCart extends StatelessWidget {

  List<CartModel>  _listCartItems = [CartModel(productName: "Butter Panner",qunatity:2,imageUrl:"assets/images/foodItem7.png",price: 299.99),CartModel(productName: "T-Shirt",qunatity:2,imageUrl:"assets/images/fashionStore5.jpg",price: 123.23)];

  @override
  Widget build(BuildContext context) {

    Widget couponCode(){
      return Stack(
        children: [
          CustomTextField(
            hintText: "Enter Coupon Code",
            borderRadius: BorderRadius.circular(12),
            validator: (value){
              if(value==""){return "Email cannot be empty";}
              else if (value.length < 8){return "Please provide a valid email";}
              else{return null;}
            },
          ),
          Positioned(
              right: 0,
              child: Container(
                height:60,width: 100,
                decoration: BoxDecoration(
                    color: AppColors.primaryDarkBlue,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12))
                ),
                child: Center(child: Text("Apply",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),),),
              ))

        ],
      );
    }

    return Scaffold(
     backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: ListView(
            children: [

              CustomAppBarRowWithCustomIcon(title: "Your Cart",),
              SizedBox(height: 20,),

              ListView.builder(
                shrinkWrap: true,
                itemCount: _listCartItems.length,
                itemBuilder: (context,index){
                  return CartItemWidget(cartModel: _listCartItems[index],);
                },
              ),
              SizedBox(height: 30,),

              couponCode(),
              SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 10
                      )
                    ],
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                      CustomPriceRow(title: "Items (2)",price: 299.99,),
                      CustomPriceRow(title: "Shipping",price: 40,),
                      CustomPriceRow(title: "Import Charges",price: 128,),
                      SizedBox(height: 5,),
                      CustomPriceRow(title: "Total Price",price: 368.99,boldText: true,)
                  ],
                ),
              ),
              SizedBox(height: 20,),

              FullWidthButton(
                borderRadius: BorderRadius.circular(8),
                title: "Checkout",
                color: AppColors.primaryDarkOrange,
                onTap: (){
                  Get.to(DeliverToScreen());
                },
              )
              

            ],
          ),
        ),
      ),
    );
  }
}


class CustomPriceRow extends StatelessWidget {

  final String title;
  final double price;
  final bool boldText;
  CustomPriceRow({this.price,this.title,this.boldText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text("$title",style: boldText == true ? CustomTextStyle.smallBoldTextStyle1(color: Colors.black) : CustomTextStyle.smallTextStyle1(color: Colors.grey) ),
          Spacer(),
          Text("\$ $price",style: boldText == true ? CustomTextStyle.smallBoldTextStyle1(color: Color(0xFF40BFFF)) : CustomTextStyle.smallTextStyle1(color: Colors.black) ),

        ],
      ),
    );
  }
}
