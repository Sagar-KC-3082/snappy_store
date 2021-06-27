import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/popular_store_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FashionCategory extends StatelessWidget {

  final String title;
  final List<StoreDetailModel> storeList;
  FashionCategory({this.title,this.storeList});

  final List _fashionCategory = ["Tops","Shirts","Cardigans & Sweaters","Knitwear","Blazers","Outerwear","Pants","Jeans","Shorts","Dresses"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
        body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CustomAppBarRow(title: title,searchBar: true,),
              SizedBox(height: 20,),
              Text("Choose Category",style: CustomTextStyle.mediumTextStyle(color: Colors.grey),),
              SizedBox(height: 20,),

              Expanded(
                child: ListView.builder(
                  itemCount: _fashionCategory.length,
                  itemBuilder: (context,index){
                    return CustomInkWell(
                      onTap: (){
                        Get.to(PopularStoreWidget(itemList: storeList,));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        child: Text(_fashionCategory[index],style: CustomTextStyle.mediumTextStyle(),),
                      ),
                    );
                  },
                ),
              )


            ],
          ),
        )
    )
    );
  }
}
