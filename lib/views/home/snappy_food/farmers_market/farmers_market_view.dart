
import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_category_text_and_image.dart';
import 'package:flutter/material.dart';

class FarmersMarketView extends StatelessWidget {

  final List _itemLists = [{"title":"Fresh Fruits & Vegetables","image":"assets/images/grocery7.png"},{"title":"Cooking Oil & Ghee","image":"assets/images/grocery8.png"},{"title":"Bakery & Snacks","image":"assets/images/grocery9.png"},{"title":"Dairy & Eggs","image":"assets/images/grocery10.png"},];
  final List<StoreDetailModel> _storeList =[StoreDetailModel(storeName: "StoreName",category: "Category",stars: "30",rating: "10",detail:"Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",imageList: ["assets/images/store5.png","assets/images/store8.png","assets/images/store7.png"],menuCategories: ["Vegetable","Snack","Leafy","Fruits","Herbs"],items: [{"imageUrl":"assets/images/foodItem7.png","title1":"Butter Panner","title2":"Rich Protein","price":"23"},{"imageUrl":"assets/images/foodItem8.png","title1":"Kaju Panner","title2":"Heavy Calorie","price":"54"},{"imageUrl":"assets/images/foodItem9.jpg","title1":"Momo","title2":"Chinese","price":"19"}]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "30",rating: "3",imageList: ["assets/images/store6.png","assets/images/store5.png"],menuCategories: ["Vegetable","Snack","Leafy","Fruits","Herbs"],items: [{"imageUrl":"assets/images/foodItem7.png","title1":"Butter Panner","title2":"Rich Protein","price":"23"},{"imageUrl":"assets/images/foodItem8.png","title1":"Kaju Panner","title2":"Heavy Calorie","price":"54"},{"imageUrl":"assets/images/foodItem9.jpg","title1":"Momo","title2":"Chinese","price":"19"}]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "30",rating: "45",imageList: ["assets/images/store7.png","assets/images/store5.png"],menuCategories: ["Vegetable","Snack","Leafy","Fruits","Herbs"],items: [{"imageUrl":"assets/images/foodItem7.png","title1":"Butter Panner","title2":"Rich Protein","price":"23"},{"imageUrl":"assets/images/foodItem8.png","title1":"Kaju Panner","title2":"Heavy Calorie","price":"54"},{"imageUrl":"assets/images/foodItem9.jpg","title1":"Momo","title2":"Chinese","price":"19"}]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "30",rating: "54",imageList: ["assets/images/store8.png","assets/images/store6.png"],menuCategories: ["Vegetable","Snack","Leafy","Fruits","Herbs"],items: [{"imageUrl":"assets/images/foodItem7.png","title1":"Butter Panner","title2":"Rich Protein","price":"23"},{"imageUrl":"assets/images/foodItem8.png","title1":"Kaju Panner","title2":"Heavy Calorie","price":"54"},{"imageUrl":"assets/images/foodItem9.jpg","title1":"Momo","title2":"Chinese","price":"19"}]),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [

              CustomAppBarRow(title: "Grocery",searchBar: true,),
              SizedBox(height: 30,),

              Expanded(child: ListView.builder(
                itemCount: _itemLists.length,
                itemBuilder: (context,index){
                  return CustomCategoryTextAndImage(title: _itemLists[index]["title"],imageUrl:_itemLists[index]["image"],storeList: _storeList,);
                },
              ))

            ],
          ),
        ),
      ),
    );
  }
}
