import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/featured_ads_models.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_product_detail_model.dart';
import 'package:client_app1/views/home/snappy_classified/category_view.dart';
import 'package:client_app1/views/home/snappy_classified/product_detail_view.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/featured_ads_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnappyClassifiedHomeScreen extends StatelessWidget {

  final List<FeaturedAdsModels> _featuredAdsList = [
    FeaturedAdsModels(title1: "Maruti 800",title2: "This is the brand new car",title3: "\$ 300",imageUrl: "assets/images/car3.jpg"),
    FeaturedAdsModels(title1: "Lamborgini",title2: "Car is this brand new car",title3: "\$ 890",imageUrl: "assets/images/car2.jpg"),
    FeaturedAdsModels(title1: "Nisan Gixer",title2: "Buy this new car",title3: "\$ 999",imageUrl: "assets/images/car.jpg"),
    FeaturedAdsModels(title1: "Rolls Royce",title2: "This is the brand new car",title3: "\$ 1211",imageUrl: "assets/images/car3.jpg")
  ];

  final List<SnappyClassifiedProductDetailModel> _snappyClassifiedProductDetailModel = [
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep","GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car3.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car2.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep","GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car3.jpg"),

  ];

  final List _categoryList = ["Cars & Bikes","Cars","Other Vehicles","Sports Parts  - Accessories","Commerical Vehicles"];

  @override
  Widget build(BuildContext context) {
    
    appBar(){
      return Row(
        children: [
          Text("Explore",style: CustomTextStyle.appBarTextStyle(),),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("YOU ARE IN ",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
              Row(
                children: [
                  Text("India",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              )
            ],
          )
        ],
      );
    }

    category(){
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: CustomImageText(title: "Cars & Bikes",imageUrl: "assets/images/car.jpg",categoryList: _categoryList,)),
              Expanded(child: CustomImageText(title: "Home & Living",imageUrl: "assets/images/home.jpg",categoryList: _categoryList,)),
              Expanded(child: CustomImageText(title: "Real Estate",imageUrl: "assets/images/real_estate.jpg",categoryList: _categoryList,)),
              Expanded(child: CustomImageText(title: "Mobile & Tablet",imageUrl: "assets/images/mobile.jpg",categoryList: _categoryList,)),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: CustomImageText(title: "Electronics",imageUrl: "assets/images/electronic5.jpg",categoryList: _categoryList,)),
              Expanded(child: CustomImageText(title: "More",imageUrl: "assets/images/mores.png",categoryList: _categoryList,)),
              Expanded(child: Container()),
              Expanded(child: Container())
            ],
          )
        ],
      );
    }
    
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top:AppConstants.screenVerticalPadding,left:  AppConstants.screenHorizontalPadding,right:  AppConstants.screenHorizontalPadding,),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: appBar()
                ),
                SizedBox(height: 10,),

                CustomTextField(
                  hintText: "Where do you want to go?",
                  borderRadius: BorderRadius.circular(8),
                ),
                SizedBox(height: 25),

                Text("Category",style: CustomTextStyle.appBarTextStyle(),),
                SizedBox(height: 15),

                category(),
                SizedBox(height: 20),

                Container(height: Get.height*0.2,width: Get.width,color: Colors.grey.withOpacity(0.3)),
                SizedBox(height: 25),

                Text("Featured Ads",style: CustomTextStyle.appBarTextStyle(),),
                SizedBox(height: 15),

                Container(
                  height: Get.height*0.23,
                  width: Get.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: _featuredAdsList.length,
                    itemBuilder: (context,index){
                      return FeaturedAdsWidget(featuredAdsModels: _featuredAdsList[index],snappyClassifiedProductDetailModel: _snappyClassifiedProductDetailModel[index],);
                    }
                ))

              ],
            ),
          ),
        ),
    );
  }
}


class CustomImageText extends StatelessWidget {

  final String imageUrl;
  final String title;
  final List categoryList;
  CustomImageText({this.title,this.imageUrl,this.categoryList});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder:(context){return SnappyClassifiedCategoryScreen(title: title,categoryList: categoryList,);}));
        // Get.to(SnappyClassifiedCategoryScreen(title: title,categoryList: categoryList,));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(imageUrl,height: 60,fit: BoxFit.fitHeight,)),
            SizedBox(height:3),
            Text(title,style: CustomTextStyle.ultraSmallBoldTextStyle(),textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}





