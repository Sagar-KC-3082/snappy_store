import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_services/snappy_servies_tasker_model.dart';
import 'package:client_app1/views/home/snappy_services/filter_view.dart';
import 'package:client_app1/views/home/snappy_services/tasker_detail_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:client_app1/widgets/snappy_classified_tasker_profile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnappyServicesBrowseTaskersScreen extends StatelessWidget {

  final List<SnappyServicesTaskerModel> _taskerList = [
    SnappyServicesTaskerModel(name: "Sagar KC", rate:"\$ 70.45/hr",tasks: "124",reliable: "100% ",reviews: "100%",vehicles: ["Car","Bike","Mopet"],imageUrl: "assets/images/user3.jpg"),
    SnappyServicesTaskerModel(name: "Ram Chhetri", rate:"\$ 34.56/hr",tasks: "34",reliable: "89% ",reviews: "60%",vehicles: ["Bike","Mopet"],imageUrl: "assets/images/user4.jpg"),
    SnappyServicesTaskerModel(name: "Bharat Thapa", rate:"\$ 65.67/hr",tasks: "787",reliable: "99% ",reviews: "34%",vehicles: ["Mopet","Bike"],imageUrl: "assets/images/user2.jpg"),
    SnappyServicesTaskerModel(name: "Himalaya Rai", rate:"\$ 23.45/hr",tasks: "12",reliable: "100% ",reviews: "30%",vehicles: ["Car","Bike","Mopet"],imageUrl: "assets/images/user.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CustomColorFullAppBar(title: "Browse Taskers \& Price",),
              SizedBox(height: 20,),

              CustomInkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyServicesFilterScreen()));
                  },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding),
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 30),
                  decoration: BoxDecoration(color: AppColors.primaryDarkBlue,borderRadius: BorderRadius.circular(20)),
                  child: Text("Filter",style: CustomTextStyle.smallTextStyle1(color: Colors.white),),
                ),
              ),
              SizedBox(height: 10,),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: _taskerList.length,
                          itemBuilder: (context,index){
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 4,
                                          blurRadius: 8
                                      )
                                    ],
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                                  margin: EdgeInsets.symmetric(horizontal: 8,vertical:0),
                                  child:TaskerWidget(snappyServicesTaskerinfo: _taskerList[index],),
                                ),
                                CustomInkWell(
                                  onTap:(){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaskerDetailScreen(taskerDetail: _taskerList[index],)));
                                    },
                                  child: FullWidthButton(
                                    color: Color(0xFF1EA945),
                                    title: "Select \& Continue",
                                    borderRadius: BorderRadius.circular(0),
                                    maring: EdgeInsets.symmetric(vertical: 0,horizontal: 8),
                                    padding: EdgeInsets.symmetric(vertical: 18),
                                  ),
                                ),
                                SizedBox(height: 30,),
                              ],
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              )

            ],
          ),
        )
    );
  }
}
