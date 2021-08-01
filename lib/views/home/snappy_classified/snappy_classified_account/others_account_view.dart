import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_others_account_model.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_product_detail_model.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/snappy_classified_category_widget.dart';
import 'package:flutter/material.dart';


class SnappyClassifiedOthersAccountScreen extends StatelessWidget {

  final List<SnappyClassifiedProductDetailModel> _snappyClassifiedProductDetailModel = [
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep","GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car2.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car3.jpg"),
  ];

  final SnappyClassifiedOthersAccountModel snappyClassifiedOthersAccountModel ;
  SnappyClassifiedOthersAccountScreen({this.snappyClassifiedOthersAccountModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Profile",icon: Icon(Icons.more_vert),),
              SizedBox(height:30,),

              Expanded(
                child: ListView(
                  children: [

                    Row(
                      children: [
                        CircleAvatar(radius: 25,backgroundImage: AssetImage(snappyClassifiedOthersAccountModel.imageurl),),
                        SizedBox(width: 15,),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(snappyClassifiedOthersAccountModel.name,style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                              SizedBox(height: 2,),
                              Text("Active since : ${snappyClassifiedOthersAccountModel.activeSince}",style: CustomTextStyle.ultraSmallTextStyle(),)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(snappyClassifiedOthersAccountModel.phone,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.blue),),SizedBox(height: 3,),
                          Text(snappyClassifiedOthersAccountModel.email,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.blue),),SizedBox(height: 3,),
                          Text(snappyClassifiedOthersAccountModel.website,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.blue),),SizedBox(height: 3,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Text("About me",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 10,),
                    Text(snappyClassifiedOthersAccountModel.aboutMe,style: CustomTextStyle.ultraSmallTextStyle(),textAlign: TextAlign.start,),
                    SizedBox(height: 20,),

                    Text("Published Ads",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 5,),

                    ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:snappyClassifiedOthersAccountModel.publishedAdsList.length,
                      itemBuilder: (context,index){
                        return SnappyClassifiedCategoryWidget(
                          snappyClassifiedItems: snappyClassifiedOthersAccountModel.publishedAdsList[index],
                          snappyClassifiedProductDetailModel: _snappyClassifiedProductDetailModel[index],
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
