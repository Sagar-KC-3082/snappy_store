import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/featured_ads_models.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_category_models.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_others_account_model.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_product_detail_model.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_account/snappy_classified_others_account_view.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SnappyClassifiedProductDetailPageScreen extends StatelessWidget {

  final List<FeaturedAdsModels> _featuredAdsList = [
    FeaturedAdsModels(title1: "Maruti 800",title2: "This is the brand new car",title3: "\$ 300",imageUrl: "assets/images/car3.jpg"),
    FeaturedAdsModels(title1: "Lamborgini",title2: "Car is this brand new car",title3: "\$ 890",imageUrl: "assets/images/car2.jpg"),
    FeaturedAdsModels(title1: "Nisan Gixer",title2: "Buy this new car",title3: "\$ 999",imageUrl: "assets/images/car.jpg"),
    FeaturedAdsModels(title1: "Rolls Royce",title2: "This is the brand new car",title3: "\$ 1211",imageUrl: "assets/images/car3.jpg")
  ];

  final List<SnappyClassifiedOthersAccountModel> snappyClassifiedOthersAccountModel = [
    SnappyClassifiedOthersAccountModel(website:"www.demo.com",imageurl:"assets/images/user.jpg",name: "John Doe",email: "johnny12@gmail.com",phone: "8930872204",activeSince: "October 12",publishedAdsList:[SnappyClassifiedCategoryModels(name: "Audi Q7 for sale",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car.jpg"),SnappyClassifiedCategoryModels(name: "Tata Nisan Famliy Seater",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car2.jpg"),SnappyClassifiedCategoryModels(name: "Ferrari Gt453",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car3.jpg")],aboutMe: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type."),
    SnappyClassifiedOthersAccountModel(website:"www.demo.com",imageurl:"assets/images/user1.png",name: "Vimala Pradhan",email: "vimala78@gmail.com",phone: "5454572204",activeSince: "June 22",publishedAdsList:[SnappyClassifiedCategoryModels(name: "Tata Nisan Famliy Seater",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car2.jpg"),SnappyClassifiedCategoryModels(name: "Audi Q7 for sale",price: "5000",days:"1 days",location: "Delhi,India",imageUrl: "assets/images/car3.jpg")],aboutMe: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type."),
  ];

  final SnappyClassifiedProductDetailModel snappyClassifiedProductDetailModel;

  SnappyClassifiedProductDetailPageScreen({this.snappyClassifiedProductDetailModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(snappyClassifiedProductDetailModel.imageUrl,height: Get.height*0.25,width: Get.width,fit: BoxFit.cover,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(snappyClassifiedProductDetailModel.name,style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsBold"),),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Container(height:15,width:15,decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5),shape: BoxShape.circle),),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Text(snappyClassifiedProductDetailModel.location,style: CustomTextStyle.smallTextStyle1(),),
                      ),
                      Container(height:15,width:15,decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5),shape: BoxShape.circle),),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Text(snappyClassifiedProductDetailModel.timePosted,style: CustomTextStyle.smallTextStyle1(),),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),

                  Text("Ad Details",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                  SizedBox(height: 20,),

                  CustomRow(title1: "Ad Type",title2: snappyClassifiedProductDetailModel.adType,),
                  CustomRow(title1: "Condition",title2: snappyClassifiedProductDetailModel.condition,),
                  CustomRow(title1: "Brand Name",title2: snappyClassifiedProductDetailModel.brandName,),
                  CustomRow(title1: "Transmission",title2: snappyClassifiedProductDetailModel.transmission,),
                  CustomRow(title1: "Year of Regsiteration",title2: snappyClassifiedProductDetailModel.yearOFReg,),
                  SizedBox(height: 10,),

                  Text("Features",style: CustomTextStyle.boldMediumTextStyle(),),
                  SizedBox(height: 0,),

                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: snappyClassifiedProductDetailModel.features.length,
                        itemBuilder: (context,index){
                          return  Row(children: [Icon(Icons.check,color: AppColors.primaryDarkBlue,size: 18,),Text(snappyClassifiedProductDetailModel.features[index],style: CustomTextStyle.smallTextStyle1(),),SizedBox(width: 15,)],);
                        }
                    ),
                  ),
                  SizedBox(height: 10,),

                  Text("Description",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                  SizedBox(height: 10,),
                  Text(snappyClassifiedProductDetailModel.description,style: CustomTextStyle.smallTextStyle1(),),
                  SizedBox(height: 20,),

                  Text("Location",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                  SizedBox(height: 10,),
                  Image.asset(snappyClassifiedProductDetailModel.locationPhotoUrl,height: Get.height*0.25,width: Get.width,fit: BoxFit.cover,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("  #AD ID 803223",style: CustomTextStyle.mediumTextStyle(),),
                      Spacer(),
                      Text("REPORT THIS AD",style: CustomTextStyle.mediumTextStyle(color: Colors.blue),)
                    ],
                  ),
                  SizedBox(height: 20,),

                  Text("Contact Information",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                  SizedBox(height: 10,),

                  CustomInkWell(
                    onTap: (){
                      Get.to(SnappyClassifiedOthersAccountScreen(snappyClassifiedOthersAccountModel: snappyClassifiedOthersAccountModel[0],));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/user.jpg"),
                          radius: 30,
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("John Doe",style: CustomTextStyle.smallTextStyle1(),),
                            Text("Member since Sep 2021",style: CustomTextStyle.ultraSmallTextStyle(),),
                            Text("SEE PROFILE",style: CustomTextStyle.smallTextStyle1(color: Colors.blue),)
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.navigate_next,color: Colors.grey,)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),


                  Row(
                    children: [
                      Text("  4.5",style: CustomTextStyle.mediumTextStyle(),),
                      SizedBox(width: 10,),
                      Icon(Icons.star,size: 15,),
                      SizedBox(width: 10,),
                      Expanded(child: Text("Based on 3 review",style: CustomTextStyle.mediumTextStyle(),)),
                      Text("Write a review",style: CustomTextStyle.mediumTextStyle(color: Colors.blue),)
                    ],
                  ),
                  SizedBox(height: 20,),

                  CustomInkWell(
                    onTap: (){
                      Get.to(SnappyClassifiedOthersAccountScreen(snappyClassifiedOthersAccountModel: snappyClassifiedOthersAccountModel[1],));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/user1.png"),
                          radius: 30,
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Vimala Pradhan",style: CustomTextStyle.smallTextStyle1(),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Icon(Icons.star,size: 15,color: AppColors.primaryDarkBlue,),Icon(Icons.star,size: 15,color: AppColors.primaryDarkBlue,),Icon(Icons.star,size: 15,color: AppColors.primaryDarkBlue,),Icon(Icons.star,size: 15,color: AppColors.primaryDarkBlue,),Icon(Icons.star,size: 15,color: Colors.grey,),
                      SizedBox(width: 10,),
                      Expanded(child: Text("22 June 2021",style: CustomTextStyle.mediumTextStyle(),)),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",style: CustomTextStyle.smallTextStyle1(),),
                  SizedBox(height: 10,),
                  Text("See all review",style: CustomTextStyle.smallTextStyle1(color: Colors.blue),),
                  SizedBox(height: 20,),


                  Text("Similar Ads",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                  SizedBox(height: 10,),

                  Container(
                      height: Get.height*0.23,
                      width: Get.width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: _featuredAdsList.length,
                          itemBuilder: (context,index){
                            return FeaturedAdsWidget(featuredAdsModels: _featuredAdsList[index],);
                          }
                      )),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}


class CustomRow extends StatelessWidget {

  String title1;
  String title2;
  CustomRow({this.title1,this.title2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Text("$title1  :  ",style: CustomTextStyle.smallTextStyle1(),),
              Expanded(child: Text(title2,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),))
            ],
          ),
          Divider()
        ],
      )
    );
  }
}


class FeaturedAdsWidget extends StatelessWidget {

  final FeaturedAdsModels featuredAdsModels;
  FeaturedAdsWidget({this.featuredAdsModels});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: Get.width*0.3,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:BorderRadius.circular(12),
            child: Image.asset(featuredAdsModels.imageUrl,width: Get.width*0.3,height: Get.height*0.13,fit: BoxFit.cover,),
          ),
          SizedBox(height: 5,),
          Text(featuredAdsModels.title1,style: CustomTextStyle.smallBoldTextStyle1(),overflow: TextOverflow.ellipsis,),
          Text(featuredAdsModels.title2,style: CustomTextStyle.ultraSmallTextStyle(),overflow: TextOverflow.ellipsis,),
          Text(featuredAdsModels.title3,style: CustomTextStyle.smallBoldTextStyle1(),overflow: TextOverflow.ellipsis,),

        ],
      ),
    );
  }
}