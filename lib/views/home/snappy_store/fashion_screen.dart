import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_category_text_and_image.dart';
import 'package:flutter/material.dart';

class FashionScreen extends StatelessWidget {

  final List<StoreDetailModel> _storeList = [StoreDetailModel(storeName: "Gucci",category: "Clothings",stars: "69",rating: "10",detail:null,imageList: ["assets/images/fashionStore1.jpg","assets/images/fashionStore4.jpg","assets/images/fashionStore3.jpg"],menuCategories: ["Jackets","T-Shirts","Jeans","Belt","Purse","Shoes"],items: [{"imageUrl":"assets/images/fashionStore5.jpg","title1":"T-Shirt","title2":"Summer Wear","price":"34"},{"imageUrl":"assets/images/fashionStore6.jpg","title1":"Jacket","title2":"Pure Woolen","price":"111"}]),StoreDetailModel(storeName: "Denim Store",category: "Fashion",stars: "69",rating: "69",imageList: ["assets/images/fashionStore2.jpg","assets/images/fashionStore1.jpg"],menuCategories: ["Jackets","T-Shirts","Jeans","Belt","Purse","Shoes"],items: [{"imageUrl":"assets/images/fashionStore5.jpg","title1":"T-Shirt","title2":"Summer Wear","price":"34"},{"imageUrl":"assets/images/fashionStore6.jpg","title1":"Jacket","title2":"Pure Woolen","price":"111"}]),StoreDetailModel(storeName: "Myntra Fashion House",category: "Clothings",stars: "69",rating: "45",imageList: ["assets/images/fashionStore3.jpg","assets/images/fashionStore4.jpg"],menuCategories: ["Jackets","T-Shirts","Jeans","Belt","Purse","Shoes"],items: [{"imageUrl":"assets/images/fashionStore5.jpg","title1":"T-Shirt","title2":"Summer Wear","price":"34"},{"imageUrl":"assets/images/fashionStore6.jpg","title1":"Jacket","title2":"Pure Woolen","price":"111"}]),StoreDetailModel(storeName: "Bran Factory",category: "Fashion",stars: "69",rating: "54",imageList: ["assets/images/fashionStore1.jpg","assets/images/fashionStore1.jpg"],menuCategories: ["Jackets","T-Shirts","Jeans","Belt","Purse","Shoes"],items: [{"imageUrl":"assets/images/fashionStore5.jpg","title1":"T-Shirt","title2":"Summer Wear","price":"34"},{"imageUrl":"assets/images/fashionStore6.jpg","title1":"Jacket","title2":"Pure Woolen","price":"111"}]),];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                CustomAppBarRow(title: "Fashion",searchBar: true,),
                SizedBox(height: 20,),

                TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    labelStyle: CustomTextStyle.boldMediumTextStyle(),
                    unselectedLabelStyle: CustomTextStyle.mediumTextStyle(),
                    indicatorColor: Colors.red,
                    labelPadding: EdgeInsets.only(bottom: 10),
                    tabs:[
                            Text("Women"),
                            Text("Men"),
                            Text("Kids")
                          ]
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      ListView(shrinkWrap: true,children: [CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "New",imageUrl: "assets/images/cloth1.png",),CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "Clothes",imageUrl: "assets/images/cloth2.png",),CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "Shoes",imageUrl: "assets/images/cloth3.png",),CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "Accessories",imageUrl: "assets/images/cloth4.png",)],),
                      ListView(shrinkWrap: true,children: [CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "New",imageUrl: "assets/images/cloth8.jpg",),CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "Clothes",imageUrl: "assets/images/cloth9.jpg",),CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "Shoes",imageUrl: "assets/images/cloth10.jpg",),CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "Accessories",imageUrl: "assets/images/cloth11.jpg",)],),
                      ListView(shrinkWrap: true,children: [CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "Baby Boy",imageUrl: "assets/images/cloth15.jpg",),CustomCategoryTextAndImageForFashion(storeList : _storeList,title: "Baby Girl",imageUrl: "assets/images/cloth14.jpg",)],),

                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
