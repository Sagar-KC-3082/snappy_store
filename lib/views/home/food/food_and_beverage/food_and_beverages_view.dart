import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_category_text_and_image.dart';
import 'package:flutter/material.dart';

class FoodAndBeveragesView extends StatelessWidget {

  final List _itemLists = [{"title":"Fast Food","image":"assets/images/foodItem3.png"},{"title":"Veg","image":"assets/images/foodItem4.png"},{"title":"Non Veg","image":"assets/images/foodItem5.png"},{"title":"Italian","image":"assets/images/foodItem6.png"},];
  final List<StoreDetailModel> _storeList =[StoreDetailModel(storeName: "StoreName",category: "Category",stars: "3",rating: "10",detail:"Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",imageList: ["assets/images/store1.png","assets/images/store4.png","assets/images/store3.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "3",rating: "3",imageList: ["assets/images/store2.png","assets/images/store1.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "3",rating: "45",imageList: ["assets/images/store3.png","assets/images/store4.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "3",rating: "54",imageList: ["assets/images/store4.png","assets/images/store1.png"]),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [

              CustomAppBarRow(title: "Food",searchBar: true,),
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