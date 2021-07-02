import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_category_models.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_product_detail_model.dart';
import 'package:client_app1/views/home/snappy_classified/product_detail_view.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SnappyClassifiedCategoryWidget extends StatefulWidget {

  final SnappyClassifiedCategoryModels snappyClassifiedItems;
  final SnappyClassifiedProductDetailModel snappyClassifiedProductDetailModel;

  SnappyClassifiedCategoryWidget({this.snappyClassifiedItems,this.snappyClassifiedProductDetailModel});

  @override
  _SnappyClassifiedCategoryWidgetState createState() => _SnappyClassifiedCategoryWidgetState();
}

class _SnappyClassifiedCategoryWidgetState extends State<SnappyClassifiedCategoryWidget> {

  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: CustomInkWell(
        onTap: (){Get.to(SnappyClassifiedProductDetailPageScreen(snappyClassifiedProductDetailModel:widget.snappyClassifiedProductDetailModel,));},
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(widget.snappyClassifiedItems.imageUrl,width: Get.width*0.3,height: Get.height*0.18,fit: BoxFit.cover,),
            ),
            SizedBox(width: 15,),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.snappyClassifiedItems.name,style: CustomTextStyle.boldMediumTextStyle(),),
                  SizedBox(height: 10,),
                  Text("\$ ${widget.snappyClassifiedItems.price}",style: CustomTextStyle.smallTextStyle1(),),
                  SizedBox(height:2,),
                  Text(widget.snappyClassifiedItems.location,style: CustomTextStyle.smallTextStyle1(),),
                  SizedBox(height:2,),
                  Text(widget.snappyClassifiedItems.days,style: CustomTextStyle.smallTextStyle1(),),

                  Row(
                    children: [
                      Expanded(child: Text(widget.snappyClassifiedItems.days)),
                      CustomInkWell(
                          onTap: (){
                            setState(() {
                              _isLiked = !_isLiked;
                            });
                          },
                          child:_isLiked == true ?  Icon(Icons.favorite,color: Colors.red,size: 20) :  Icon(Icons.favorite_border,color:Colors.grey,size: 20,)
                      )
                    ],
                  )

                ],
              ),
            ),
            SizedBox(width: 15,)
          ],
        ),
      ),
    );
  }
}