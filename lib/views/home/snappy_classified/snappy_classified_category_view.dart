import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_category_models.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_category_detail_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SnappyClassifiedCategoryScreen extends StatelessWidget {

  final String title;
  final List categoryList;
  final List<SnappyClassifiedCategoryModels> _snappyClassifiedItems = [SnappyClassifiedCategoryModels(name: "Audi Q7 for sale",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car.jpg"),SnappyClassifiedCategoryModels(name: "Audi Q7 for sale",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car2.jpg"),SnappyClassifiedCategoryModels(name: "Audi Q7 for sale",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car3.jpg")];
  SnappyClassifiedCategoryScreen({this.title,this.categoryList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: title,),
              SizedBox(height: 30,),
              Text("All Sub Category",style: CustomTextStyle.mediumTextStyle(color: Colors.grey),),
              SizedBox(height: 20,),

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  itemBuilder: (context,index){
                    return CustomInkWell(
                      onTap: (){
                        Get.to(SnappyClassifiedCategoryDetailScreen(title: categoryList[index],snappyClassifiedItems: _snappyClassifiedItems,));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(categoryList[index],style: CustomTextStyle.mediumTextStyle(),),
                            Spacer(),
                            Icon(Icons.navigate_next)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
