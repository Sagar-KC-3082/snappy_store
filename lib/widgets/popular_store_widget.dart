import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_store_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularStoreWidget extends StatelessWidget {

  final List<StoreDetailModel> itemList;
  PopularStoreWidget({this.itemList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [

              CustomAppBarRow(title: "Popular Stores",searchBar: true,),
              SizedBox(height: 20,),
              
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: Get.width*0.05,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.65
                    ),
                    itemCount: itemList.length,
                    itemBuilder: (context,index){
                      return CustomStoreTitleWidget(
                        storeDetailModel: itemList[index],
                      );
                    }),
              )

            ],
          ),
        ),
      )
    );
  }
}
