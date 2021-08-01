import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/views/home/snappy_store/fashion_category.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/popular_store_widget.dart';
import 'package:client_app1/widgets/store_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCategoryTextAndImage extends StatelessWidget {

  final String title;
  final String imageUrl;
  final List<StoreDetailModel> storeList;
  CustomCategoryTextAndImage({this.title,this.imageUrl,this.storeList});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){return PopularStoreWidget(itemList: storeList,);}));
        },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        padding: EdgeInsets.only(left: 20),
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
        child: Row(
          children: [
            SizedBox(width:Get.width*0.4,child: Text(title,style: CustomTextStyle.appBarTextStyle(),)),
            Expanded(child: SizedBox(
              height: Get.height*0.15,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                  child: Image.asset(imageUrl,fit: BoxFit.cover,)),))
          ],
        ),
      ),
    );
  }
}


class CustomCategoryTextAndImageForFashion extends StatelessWidget {

  final String title;
  final String imageUrl;
  final List<StoreDetailModel> storeList;

  CustomCategoryTextAndImageForFashion({this.title,this.imageUrl,this.storeList});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: () {
        title == "Shoes" || title == "Accessories" ?
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PopularStoreWidget(itemList: storeList,);
        })) :
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FashionCategory(title: title, storeList: storeList,);
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          children: [
            SizedBox(width:Get.width*0.4,child: Text(title,style: CustomTextStyle.appBarTextStyle(),)),
            Expanded(child: SizedBox(
              height: Get.height*0.15,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                  child: Image.asset(imageUrl,fit: BoxFit.cover,)),))
          ],
        ),
      ),
    );
  }
}
