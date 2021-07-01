import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_category_models.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_product_detail_model.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_category_detail_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/snappy_classified_category_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class SnappyClassifiedAdListScreen extends StatelessWidget {

  final String title;
  final List<SnappyClassifiedCategoryModels> snappyClassifiedItems;
  SnappyClassifiedAdListScreen({this.title,this.snappyClassifiedItems});

  final List<SnappyClassifiedProductDetailModel> _snappyClassifiedProductDetailModel = [
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep","GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car2.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car3.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: title,),
              SizedBox(height:30,),

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snappyClassifiedItems.length,
                  itemBuilder: (context,index){
                    return SnappyClassifiedCategoryWidget(snappyClassifiedItems: snappyClassifiedItems[index],snappyClassifiedProductDetailModel: _snappyClassifiedProductDetailModel[index],);
                  },
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
