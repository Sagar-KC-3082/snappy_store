import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/popular_store_widget.dart';
import 'package:client_app1/widgets/store_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FashionCategory extends StatelessWidget {

  String title;
  FashionCategory({this.title});

  final  List _fashionCategory = ["Tops","Shirts","Cardigans & Sweaters","Knitwear","Blazers","Outerwear","Pants","Jeans","Shorts","Dresses"];
  final List<StoreDetailModel> _storeList = [StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "10",detail:"Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",imageList: ["assets/images/fashionStore1.png","assets/images/fashionStore4.png","assets/images/fashionStore3.png"],menuCategories: ["Vegetable","Snack","Beverages","Fruits","Cold Drinks"],items: [{"imageUrl":"assets/images/foodItem7.png","title1":"Butter Panner","title2":"Rich Protein","price":"23"},{"imageUrl":"assets/images/foodItem8.png","title1":"Kaju Panner","title2":"Heavy Calorie","price":"54"},{"imageUrl":"assets/images/foodItem9.jpg","title1":"Momo","title2":"Chinese","price":"19"}]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "69",imageList: ["assets/images/fashionStore2.png","assets/images/fashionStore1.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "45",imageList: ["assets/images/fashionStore3.png","assets/images/fashionStore4.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "54",imageList: ["assets/images/fashionStore1.png","assets/images/fashionStore1.png"]),];

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
                        Get.to(PopularStoreWidget(itemList: _storeList,));
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
