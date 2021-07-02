import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/featured_ads_models.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_product_detail_model.dart';
import 'package:client_app1/views/home/snappy_classified/product_detail_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'custom_inkwell.dart';


class FeaturedAdsWidget extends StatelessWidget {

  final FeaturedAdsModels featuredAdsModels;
  final SnappyClassifiedProductDetailModel snappyClassifiedProductDetailModel;

  FeaturedAdsWidget({this.featuredAdsModels,this.snappyClassifiedProductDetailModel});

  @override
  Widget build(BuildContext context) {
    return  CustomInkWell(
      onTap: (){
        Get.back();
        Get.to(SnappyClassifiedProductDetailPageScreen(snappyClassifiedProductDetailModel:snappyClassifiedProductDetailModel));
      },
      child: Container(
        width: Get.width*0.3,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:BorderRadius.circular(12),
              child: Image.asset(featuredAdsModels.imageUrl,width: Get.width*0.3,height: Get.height*0.13,fit: BoxFit.cover,),
            ),
            SizedBox(height: 5,),
            Text(featuredAdsModels.title1,style: CustomTextStyle.smallBoldTextStyle1(),overflow: TextOverflow.ellipsis,),
            Text(featuredAdsModels.title2,style: CustomTextStyle.ultraSmallTextStyle(),overflow: TextOverflow.ellipsis,),
            Text(featuredAdsModels.title3,style: CustomTextStyle.smallBoldTextStyle1(),overflow: TextOverflow.ellipsis,),

          ],
        ),
      ),
    );
  }
}