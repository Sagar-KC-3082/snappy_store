import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/popular_store_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SearchResultWidget extends StatelessWidget {

   final String title1;
   final String title2;
   final String price;
   final String imageUrl;
   final List storeList;
   SearchResultWidget({this.title1, this.title2, this.price, this.imageUrl,this.storeList});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        Get.to(PopularStoreWidget(itemList: storeList,));
      },
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Row(
            children: [
              Image.asset(imageUrl,height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.fill,),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title1,style: CustomTextStyle.boldMediumTextStyle()),
                  SizedBox(height: 3,),
                  Text(title2,style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.grey)),
                  SizedBox(height: 7,),
                  Text(price,style: CustomTextStyle.smallBoldTextStyle1()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}
