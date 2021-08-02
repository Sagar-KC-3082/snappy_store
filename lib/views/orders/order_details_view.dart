import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/cart/cart_model.dart';
import 'package:client_app1/views/review/review_view.dart';
import 'package:client_app1/widgets/cart_item_widget.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailsScreen extends StatelessWidget {

  List<CartModel>  _listCartItems = [CartModel(productName: "Butter Panner",qunatity:2,imageUrl:"assets/images/foodItem7.png",price: 299.99),CartModel(productName: "T-Shirt",qunatity:2,imageUrl:"assets/images/fashionStore5.jpg",price: 123.23)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: ListView(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Order Details",),
              SizedBox(height: Get.height*0.045,),

              Image.asset("assets/images/tracking.png"),
              SizedBox(height: 30,),
              Text("Product",style: CustomTextStyle.smallBoldTextStyle1(),),
              SizedBox(height: 10,),

              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: _listCartItems.length,
                itemBuilder: (context,index){
                  return CartItemWidget(cartModel: _listCartItems[index],hideDeleteIcon: true,);
                },
              ),
              SizedBox(height: 20,),

              Text("Shipping Details",style: CustomTextStyle.smallBoldTextStyle1(),),
              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.withOpacity(0.2))
                ),
                padding: EdgeInsets.only(top: 15,left: 12,bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRow(title1:"Date Shipping",title2: "January 16, 2015",),
                    CustomRow(title1:"Shipping",title2: "POS Reggular",),
                    CustomRow(title1:"No. Ressi",title2: "000192848573",),
                    CustomRow(title1:"Address",title2: "2727 Lakeshore Rd undefined Nampa, Tennesseed 78410",),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Text("Payment Details",style: CustomTextStyle.smallBoldTextStyle1(),),
              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.withOpacity(0.2))
                ),
                padding: EdgeInsets.only(top: 15,left: 12,bottom: 15,right: 20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRow1(title1:"Items (3)",title2: "\$598.86",),
                    CustomRow1(title1:"Shipping",title2: "\$32",),
                    CustomRow1(title1:"Import Charges",title2: "\$120",),
                    SizedBox(height: 7),
                    CustomRow1(title1:"Total Price",title2: "\$799.99",isBold: true,),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Notify Me",
                borderRadius: BorderRadius.circular(8),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context){return ReviewScreen();}));
                  },
              )

            ],
          ),
        ),
      ),
    );
  }
}


class CustomRow extends StatelessWidget {

  final String title1;
  final String title2;
  CustomRow({this.title1, this.title2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title1,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
          ),

          Spacer(),

          Expanded(
            child:Center(child: Text(title2,style: CustomTextStyle.ultraSmallBoldTextStyle(),textAlign: TextAlign.center,),),)
        ],
      ),
    );
  }

}



class CustomRow1 extends StatelessWidget {

  final String title1;
  final String title2;
  final bool isBold;
  CustomRow1({this.title1, this.title2,this.isBold});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // width:Get.width*0.3,
              child: Text(title1,style: isBold==null ? CustomTextStyle.ultraSmallTextStyle(color: Colors.grey): CustomTextStyle.ultraSmallBoldTextStyle())),

          Center(child: Text(title2,style: isBold==null ?  CustomTextStyle.ultraSmallBoldTextStyle() :  CustomTextStyle.ultraSmallBoldTextStyle(color:Colors.blue),textAlign: TextAlign.center,),)
        ],
      ),
    );
  }

}
