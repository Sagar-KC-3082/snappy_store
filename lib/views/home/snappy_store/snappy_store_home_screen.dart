import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/views/home/snappy_store/fashion_screen.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_slliver_grid.dart';
import 'package:client_app1/widgets/popular_store_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnappyStoreHomeScreen extends StatelessWidget {

  final List _snappyStoreCategoryList = [{"name":"Fashion","imageUrl":"assets/images/cloth.png"},{"name":"Sports","imageUrl":"assets/images/cloth.png"},{"name":"Pharmacy","imageUrl":"assets/images/cloth.png"},{"name":"Electronic & PC Hub","imageUrl":"assets/images/cloth.png"},{"name":"Hardware","imageUrl":"assets/images/cloth.png"},{"name":"Agricultural Products","imageUrl":"assets/images/cloth.png"},{"name":"Pet Supplies","imageUrl":"assets/images/cloth.png"},{"name":"Gift Gallery","imageUrl":"assets/images/cloth.png"},{"name":"Fashion","imageUrl":"assets/images/cloth.png"},{"name":"Fashion","imageUrl":"assets/images/cloth.png"},{"name":"Fashion","imageUrl":"assets/images/cloth.png"},];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBarRowWithCustomIcon(title:"Snappy Store",),
                SizedBox(height: 20,),
                
                Container(
                  height: Get.height*0.8,width: Get.width,
                  child: GridView.builder(
                      itemCount: _snappyStoreCategoryList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                        crossAxisCount: 3,height: Get.height*0.14,crossAxisSpacing: 20
                      ),
                      itemBuilder: (context,index){
                        return Center(child: CustomTextIconColumn(imageUrl: _snappyStoreCategoryList[index]["imageUrl"],title: _snappyStoreCategoryList[index]["name"],));
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CustomTextIconColumn extends StatelessWidget {

  final List<StoreDetailModel> _storeList = [StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "10",detail:"Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",imageList: ["assets/images/fashionStore1.png","assets/images/fashionStore4.png","assets/images/fashionStore3.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "69",imageList: ["assets/images/fashionStore2.png","assets/images/fashionStore1.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "45",imageList: ["assets/images/fashionStore3.png","assets/images/fashionStore4.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "54",imageList: ["assets/images/fashionStore1.png","assets/images/fashionStore1.png"]),];

  String imageUrl;
  String title;
  CustomTextIconColumn({this.imageUrl,this.title});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        title == "Fashion" ? Get.to(FashionScreen()) : Get.to(PopularStoreWidget(itemList: _storeList,));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
              Image.asset(imageUrl,fit: BoxFit.cover,),
              SizedBox(height: 10,),
              Text(title,style: CustomTextStyle.smallBoldTextStyle1(color: Colors.grey),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}

