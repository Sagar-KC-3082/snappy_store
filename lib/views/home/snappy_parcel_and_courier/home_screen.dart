import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/track_order_location_view.dart';
import 'package:client_app1/widgets/custom_drawer.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ParcelHomeScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> _globalKey1 = GlobalKey<ScaffoldState>();

  appBar(){
    return  Row(
      children: [
        CustomInkWell(
            onTap: (){
              _globalKey1.currentState.openDrawer();
            },
            child: Icon(Icons.menu,color: Colors.black,size: 22,)),
        Spacer(),
        Image.asset("assets/images/splashImage.png",height: 45,width: 60,fit: BoxFit.cover,),
        Spacer(),
        CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage("assets/images/user2.jpg"),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: _globalKey1,
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: SingleChildScrollView(
              child: Container(
                height: Get.height*0.93,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    appBar(),
                    SizedBox(height: 30,),

                    Text("Track order",style: CustomTextStyle.boldTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 10,),
                    Text("Enter parcel number",style: CustomTextStyle.ultraSmallBoldTextStyle(),),
                    SizedBox(height: 20,),

                    Container(
                      color: Colors.white,
                      child: CustomTextField(
                        hintText: "Tracking Number",
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(height: 10,),

                    FullWidthButton(
                      color: AppColors.primaryDarkOrange,
                      title: "Track Order",
                      borderRadius: BorderRadius.circular(8),
                    ),
                    SizedBox(height: 20),

                    TabBar(
                      indicatorColor: AppColors.primaryDarkOrange,
                      isScrollable: true,
                      labelColor: AppColors.primaryDarkOrange,
                      unselectedLabelColor: Colors.grey,
                      unselectedLabelStyle: CustomTextStyle.smallTextStyle1(),
                      labelStyle: CustomTextStyle.smallBoldTextStyle1(color: AppColors.primaryDarkOrange),
                      tabs: [
                        Text("All"),
                        Text("Completed"),
                        Text("Assigning"),
                        Text("Cancelled")
                      ],
                    ),
                    SizedBox(height: 10,),


                    Expanded(
                      child: TabBarView(
                        children: [
                          CustomListView(),
                          CustomListView(),
                          CustomListView(),
                          CustomListView(),

                        ],
                      ),
                    ),

                    SizedBox(height: 15,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   ListView(
      shrinkWrap: true,
      children: [
        ParcelAndCourierTabWidget(index: 0,),
        ParcelAndCourierTabWidget(index: 1),
        ParcelAndCourierTabWidget(index: 2),
      ],
    );
  }
}




class ParcelAndCourierTabWidget extends StatelessWidget {

  final int index;
  ParcelAndCourierTabWidget({this.index});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TrackOrderViewLocationScreen()));
        },
      child: Container(
        height: 140,
        padding: EdgeInsets.only(left: 15),
        margin: EdgeInsets.symmetric(horizontal: 8,vertical:15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2),offset: Offset(1,3), blurRadius: 5,spreadRadius: 3),
            ]
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Text("Feb 12, Fri 10:00 30 PM",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(height:15,width: 15, child: Icon(Icons.circle,color: Colors.grey,size: 15,)),
                      SizedBox(width: 8,),
                      Text("Shar Tau Tok",style:  CustomTextStyle.smallTextStyle1(color: Colors.grey),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(height:15,width: 15,child:Image.asset("assets/images/location1.png")),
                      SizedBox(width: 8,),
                      Text("Fanling",style:  CustomTextStyle.smallTextStyle1(color: Colors.grey))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 10,),

           Column(
             children: [
               SizedBox(height: 15,),
               Text("\$ 168.45",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.primaryDarkOrange),),
             ],
           ),
            SizedBox(width: 15,),

            Container(
              height: 140,
              padding: EdgeInsets.symmetric(horizontal:4,vertical: 20),
              decoration: BoxDecoration(
                color: index == 0 ? Colors.blue : index == 1 ? Colors.green :index == 2 ? Colors.red : Colors.orange,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(index == 0 ? "On going" : index == 1 ? "Completed" : "Rejected",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
