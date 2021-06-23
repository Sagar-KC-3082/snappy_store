
import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_category_text_and_image.dart';
import 'package:flutter/material.dart';

class FarmersMarketView extends StatelessWidget {

  final List _itemLists = [{"title":"Fresh Fruits & Vegetables","image":"assets/images/grocery1.png"},{"title":"Cooking Oil & Ghee","image":"assets/images/grocery2.png"},{"title":"Bakery & Snacks","image":"assets/images/grocery3.png"},{"title":"Dairy & Eggs","image":"assets/images/grocery4.png"},];
  final List<StoreDetailModel> _storeList =[StoreDetailModel(storeName: "StoreName",category: "Category",stars: "30",rating: "10",detail:"Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",imageList: ["assets/images/store5.png","assets/images/store8.png","assets/images/store7.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "30",rating: "3",imageList: ["assets/images/store6.png","assets/images/store5.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "30",rating: "45",imageList: ["assets/images/store7.png","assets/images/store5.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "30",rating: "54",imageList: ["assets/images/store8.png","assets/images/store6.png"]),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
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
