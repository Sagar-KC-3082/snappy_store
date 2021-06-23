import 'package:badges/badges.dart';
import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/views/home/cart/your_cart.dart';
import 'package:client_app1/widgets/add_item_widget.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreDetailWidget extends StatelessWidget {

 final StoreDetailModel storeDetailModel;

 StoreDetailWidget({this.storeDetailModel});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: ListView(

          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                child: CustomAppBarRowWithCustomIcon(title: storeDetailModel.storeName,icon: Icon(Icons.share_rounded),)),
            SizedBox(height: 5,),

            SizedBox(
              height: Get.height*0.4,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: storeDetailModel.imageList.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(right:5),
                      child: Image.asset(storeDetailModel.imageList[index],width: Get.width*0.75,fit: BoxFit.cover),
                    );
                  }
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(storeDetailModel.storeName,style: CustomTextStyle.ultraBoldTextStyleForHeading(color: Colors.black),),
                  SizedBox(height: 2,),
                  Text(storeDetailModel.category,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.amber,),Icon(Icons.star,color: Colors.amber,),Icon(Icons.star,color: Colors.amber,),Icon(Icons.star,color: Colors.amber,),Icon(Icons.star_border,color: Colors.grey,),
                      Text("( ${storeDetailModel.rating} )",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),)
                    ],
                  ),

                  SizedBox(height: 20,),
                  Text(storeDetailModel.detail !=null ? storeDetailModel.detail : "Shorts dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",style: CustomTextStyle.smallTextStyle1(color: Colors.black),),
                  SizedBox(height:30,),
                  Row(
                    children: [
                      Text("More details",style: CustomTextStyle.mediumTextStyle(),),
                      Spacer(),
                      Icon(Icons.navigate_next,color: Colors.grey,)
                    ],
                  ),
                  SizedBox(height:30,),

                  Row(
                    children: [
                      Text("Menu",style: CustomTextStyle.appBarTextStyle(),),
                      SizedBox(width: 5,),
                      Icon(Icons.search,color: Colors.grey,),
                      Spacer(),
                      Icon(Icons.navigate_next,color: Colors.grey,)
                    ],
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 45  ,width: Get.width,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomContainer(title: "Vegetable",),CustomContainer(title: "Snack",),CustomContainer(title: "Beverages",),CustomContainer(title: "Fruits",),CustomContainer(title: "Cold Drinks",),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  storeDetailModel.stars=="30" ? AddItemWidget(imageUrl: "assets/images/grocery6.png",title1: "Pull Over",title2: "Mango",price: "51\$",): AddItemWidget(imageUrl: "assets/images/foodItem7.png",title1: "Butter Panner",title2: "Mango",price: "51\$",),
                  storeDetailModel.stars=="30" ? AddItemWidget(imageUrl: "assets/images/grocery5.png",title1: "Ginger",title2: "Spices",price: "51\$",): AddItemWidget(imageUrl: "assets/images/foodItem8.png",title1: "Kaju Panner",title2: "Raisins",price: "100\$",),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Spacer(),
                      CustomInkWell(
                        onTap: (){Get.to(YourCart());},
                        child: Badge(
                            padding: EdgeInsets.all(10),
                            badgeColor: Colors.white,
                            badgeContent: Text("2",style: CustomTextStyle.mediumTextStyle(color: Colors.black),),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                              child: Image.asset("assets/images/trolley.png"),
                            )),
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                  SizedBox(height: 20,),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String title;
  CustomContainer({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black
      ),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      margin: EdgeInsets.only(right: 10),
      child: Center(child: Text(title,style: CustomTextStyle.smallTextStyle1(color: Colors.white),),),
    );
  }
}
