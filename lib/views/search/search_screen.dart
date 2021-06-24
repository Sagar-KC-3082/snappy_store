import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/search_result_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  bool _searched = false;
  final List<StoreDetailModel> _storeList =[StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "10",detail:"Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",imageList: ["assets/images/fashionStore1.png","assets/images/fashionStore4.png","assets/images/fashionStore3.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "69",imageList: ["assets/images/fashionStore2.png","assets/images/fashionStore1.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "45",imageList: ["assets/images/fashionStore3.png","assets/images/fashionStore4.png"]),StoreDetailModel(storeName: "StoreName",category: "Category",stars: "69",rating: "54",imageList: ["assets/images/fashionStore1.png","assets/images/fashionStore1.png"]),];
  final List _searchItems = [{"imageUrl": "assets/images/cloth5.png","title1": "Pull Over","title2": "Winter","price": "51\$"},{"imageUrl": "assets/images/cloth6.png","title1": "Blouse","title2": "Summer","price": "32\$",}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
                SizedBox(height: 20,),
                TextField(
                  onSubmitted: (value){setState(() {_searched== false?  _searched = !_searched :  _searched = _searched;});},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(7),
                    hintText: "Search",
                    hintStyle: CustomTextStyle.mediumTextStyle(color: Colors.grey),
                    prefixIcon:  CustomInkWell(
                        onTap: (){setState(() {_searched== false?  _searched = !_searched :  _searched = _searched;});},
                        child: Icon(Icons.search,color: Colors.grey,)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),borderRadius: BorderRadius.circular(12)),
                    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),borderRadius: BorderRadius.circular(12)),
                    focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              SizedBox(height: 30,),

              _searched==true ? Expanded(
                child: ListView.builder(
                  itemCount: _searchItems.length,
                  itemBuilder: (context,index){
                    return SearchResultWidget(
                      storeList: _storeList,
                      title1: _searchItems[index]["title1"],
                      title2: _searchItems[index]["title2"],
                      price: _searchItems[index]["price"],
                      imageUrl: _searchItems[index]["imageUrl"],
                    );
                  },
                ),
              ) :
                  Container()



            ],
          ),
        ),
      ),
    );
  }
}



