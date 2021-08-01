import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/store_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomStoreTitleWidget extends StatelessWidget {

  final StoreDetailModel storeDetailModel;

  CustomStoreTitleWidget({this.storeDetailModel});

  @override
  Widget build(BuildContext context) {

    return CustomInkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => StoreDetailWidget(storeDetailModel: storeDetailModel,)));
        },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(storeDetailModel.imageList[0],fit: BoxFit.cover,height: Get.height*0.22,width: Get.width*0.45,),),
          SizedBox(height: 5,),

          Row(
            children: [
              Icon(Icons.star,color: Colors.amber,),Icon(Icons.star,color: Colors.amber,),Icon(Icons.star,color: Colors.amber,),Icon(Icons.star,color: Colors.amber,),Icon(Icons.star_border,color: Colors.grey,),
              Text("( ${storeDetailModel.rating} )",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),)
            ],
          ),
          SizedBox(height: 5,),

          Text(storeDetailModel.category== null ? "Category" : storeDetailModel.category,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
          SizedBox(height: 2,),
          Text(storeDetailModel.storeName == null ? "Store Name" : storeDetailModel.storeName,style: CustomTextStyle.boldMediumTextStyle(),)
        ],
      ),
    );
  }

}
