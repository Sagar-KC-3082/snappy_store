import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_category_text_and_image.dart';
import 'package:flutter/material.dart';

class FashionScreen extends StatelessWidget {

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
                      ListView(shrinkWrap: true,children: [CustomCategoryTextAndImageForFashion(title: "New",imageUrl: "assets/images/cloth1.png",),CustomCategoryTextAndImageForFashion(title: "Clothes",imageUrl: "assets/images/cloth2.png",),CustomCategoryTextAndImageForFashion(title: "Shoes",imageUrl: "assets/images/cloth3.png",),CustomCategoryTextAndImageForFashion(title: "Accessories",imageUrl: "assets/images/cloth4.png",)],),
                      ListView(shrinkWrap: true,children: [CustomCategoryTextAndImageForFashion(title: "New",imageUrl: "assets/images/cloth8.jpg",),CustomCategoryTextAndImageForFashion(title: "Clothes",imageUrl: "assets/images/cloth9.jpg",),CustomCategoryTextAndImageForFashion(title: "Shoes",imageUrl: "assets/images/cloth10.jpg",),CustomCategoryTextAndImageForFashion(title: "Accessories",imageUrl: "assets/images/cloth11.jpg",)],),
                      ListView(shrinkWrap: true,children: [CustomCategoryTextAndImageForFashion(title: "Baby Boy",imageUrl: "assets/images/cloth15.jpg",),CustomCategoryTextAndImageForFashion(title: "Baby Girl",imageUrl: "assets/images/cloth14.jpg",)],),

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
