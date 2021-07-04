import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_parcel_and_courier/add_location.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_drawer.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'add_date_and_time.dart';


class ParcelAndCourierPlaceOrderScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> _globalKey2 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: _globalKey2,
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarRowOnlyText(title: "Place Order",globalKey: _globalKey2,),
              SizedBox(height: 30,),

              Expanded(child:
              ListView(
                shrinkWrap: true,
                children: [
                  
                  LabelContainer(),
                  SizedBox(height: 30,),

                  Text("Add location",style: CustomTextStyle.smallTextStyle1(color: Colors.grey)),
                  SizedBox(height: 20,),

                  LocationStack(),
                  SizedBox(height: 20,),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.withOpacity(0.2),offset: Offset(1,3), blurRadius: 5,spreadRadius: 3),
                        ]
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text("Estimated Fare",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold"),)),
                            Text("+ 20",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
                          ],
                        ),
                        SizedBox(height: 5,),

                        Row(
                          children: [
                            Expanded(child: Text("Moving Cart",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)),
                            Text("\$ 138.00",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsBold",color: AppColors.primaryDarkOrange),)
                          ],
                        ),

                        SizedBox(height: 20,),
                        FullWidthButtonWithIcon(
                          title: "Next",
                          icon: Icon(Icons.navigate_next,color: Colors.white,),
                          color: AppColors.primaryDarkOrange,
                          padding: EdgeInsets.symmetric(vertical:15,horizontal: 15),
                          borderRadius: BorderRadius.circular(60),
                          onTap: (){
                            Get.to(ParcelAndCourierAddLocationScreenAddDateTimeScreen());
                          },
                        )
                      ],
                    ),
                  )

                ],
              )
              )

            ],
          ),
        ),
      ),
    );
  }
}



class LabelContainer extends StatefulWidget {
  @override
  _LabelContainerState createState() => _LabelContainerState();
}

class _LabelContainerState extends State<LabelContainer> {

  int _selectedIndex=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryDarkBlue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(

        children: [
            Expanded(
              child: CustomInkWell(
                onTap: (){
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedIndex == 1 ? Colors.white : Color(0xFF005A8D)
                      ),
                      padding: EdgeInsets.all(20),
                      child: SvgPicture.asset("assets/svgs/scooter.svg",color: _selectedIndex == 1 ? AppColors.primaryDarkBlue : Colors.white, height: 50,),
                    ),
                    SizedBox(height: 10,),
                    _selectedIndex == 1 ? Image.asset("assets/images/indicator.png",height: 15,) : SizedBox(height: 15,),
                  ],
                ),
              ),
            ),

          Expanded(
            child: CustomInkWell(
              onTap: (){
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Column(
                children: [
                  SizedBox(height: 25,),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedIndex == 2 ? Colors.white : Color(0xFF005A8D)
                    ),
                    padding: EdgeInsets.all(20),
                    child: SvgPicture.asset("assets/svgs/van.svg",color: _selectedIndex == 2 ? AppColors.primaryDarkBlue : Colors.white,height: 50,),
                  ),
                  SizedBox(height: 10,),
                  _selectedIndex == 2 ? Image.asset("assets/images/indicator.png",height: 15,) : SizedBox(height: 15,),
                ],
              ),
            ),
          ),

          Expanded(
            child: CustomInkWell(
              onTap: (){
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: Column(
                children: [
                  SizedBox(height: 25,),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _selectedIndex == 3 ? Colors.white : Color(0xFF005A8D)
                    ),
                    padding: EdgeInsets.all(20),
                    child: SvgPicture.asset("assets/svgs/truck.svg",color: _selectedIndex == 3 ? AppColors.primaryDarkBlue : Colors.white,height: 50,),
                  ),
                  SizedBox(height: 10,),
                  _selectedIndex == 3 ? Image.asset("assets/images/indicator.png",height: 15,) : SizedBox(height: 15,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



class LocationStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CustomAddlocationWidget(location: '24, Ocean avenue',),
            CustomAddlocationWidget(location: 'Drop off address',),
          ],
        ),
        Positioned(
            left: 5,
            top: 55,
            child: Image.asset("assets/images/arrow3.png",height: 100,width: 50,fit: BoxFit.fill,))
      ],
    );
  }
}



class CustomAddlocationWidget extends StatelessWidget {

  final String location;
  CustomAddlocationWidget({this.location});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical:15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2),offset: Offset(1,3), blurRadius: 5,spreadRadius: 3),
          ]
      ),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
      child: Row(
        children: [
          Icon(Icons.circle,color: Colors.red,size: 20,),
          SizedBox(width: 10,),
          Expanded(child:Text(location,style: CustomTextStyle.smallTextStyle1(),)),
          CustomInkWell(
            onTap: (){Get.to(ParcelAndCourierAddLocationScreen());},
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle,color: AppColors.primaryDarkBlue),
              padding: EdgeInsets.all(3),
              child: Icon(Icons.add,color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}


