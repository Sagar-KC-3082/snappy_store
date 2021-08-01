import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_checkbox.dart';
import 'package:client_app1/widgets/custom_dropdown_widget.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SnappyClassifiedPostAd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                CustomAppBarRowWithCustomIconWithNoSpacing(title: "Post Free Ad",),
                SizedBox(height:30,),

               Expanded(
                 child: ListView(
                   shrinkWrap: true,
                   children: [
                     Text("Ad Details",style:CustomTextStyle.appBarTextStyle(),),
                     SizedBox(height: 30,),

                     CustomColumn(title: "Categories",hintText: "Select Categories",dropDownItems: ["Mobile","Bikes","Cars","Houses"],),
                     CustomColumn(title: "Sub Categories",hintText: "Select Sub Categories",dropDownItems: ["Gaming Phone","Photography Phone","Flashing","Premium","Low Budget Devices"],),
                     CustomColumnWithTextField(title: "Ad Title",hintText: "Title for your Avertise",),
                     CustomColumnWithTextField(title: "Description",hintText: "Tell us more about your Advertise",maxLines: 5,),

                     AddImage(),
                     SizedBox(height: 20,),

                     CustomCheckBoxRow(items: ["Private","Professional"],title: "Ad Type",),
                     SizedBox(height: 10,),

                     CustomColumn(title: "Brand Name",hintText: "Select Brand Name",dropDownItems: ["Nokia","Lenovo","Redmi","Realme","IPhones"],),
                     CustomColumnWithTextField(title: "Year of Registration",hintText: "Year of Registration",),

                     CustomCheckBoxRow(items: ["Automatic","Manual"],title: "Transmission",),
                     SizedBox(height: 10,),

                     CustomSquareCheckBoxColumn(title: "Features",items: ["GPS","ABS","Air Condition","Security System"],),
                     SizedBox(height: 20,),

                     Text("Price",style: CustomTextStyle.boldMediumTextStyle(),),
                     SizedBox(height: 10,),
                     Row(
                       children: [
                         Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             border: Border.all(color: Colors.grey.withOpacity(0.2)),
                           ),
                           padding: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
                           child: Row(
                             children: [
                               Text("Price",style: CustomTextStyle.smallBoldTextStyle1(),),
                               SizedBox(width: 10,),
                               Container(width:50,height:30,child: TextField(
                                 decoration: InputDecoration(border: InputBorder.none),
                               )),
                               SizedBox(width: 10,),
                               Icon(Icons.attach_money_outlined,size: 20,)
                             ],
                           ),
                         ),
                         SizedBox(
                             height: 12,
                             child: CustomSquareCheckBox()),
                         Text("Negotiate",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
                       ],
                     ),
                     SizedBox(height: 30,),


                     Text("Contact Information",style:CustomTextStyle.appBarTextStyle(),),
                     SizedBox(height: 30,),

                     CustomColumnWithTextField(title: "Mobile Number",hintText: "Enter Mobile Number",),
                     CustomColumn(title: "City",hintText: "Select City",dropDownItems: ["Delhi","Mumbai","Lucknow","Kanpur","Patna","Sikkim"],),

                     Text("Location",style: CustomTextStyle.boldMediumTextStyle(),),
                     SizedBox(height: 10,),
                     Image.asset("assets/images/map.png",height: Get.height*0.25,width: Get.width,fit: BoxFit.cover,),
                     SizedBox(height: 20,),

                     CustomColumnWithTextField(title: "Tag",hintText: "Enter tag Separated by Comma",),
                     SizedBox(height: 20,),

                     Text("Make your Ad Premium (Optional)",style: CustomTextStyle.boldMediumTextStyle(),),
                     SizedBox(height: 15,),

                     Row(
                       children: [
                         CustomCheckBox(),
                         SizedBox(width: 10,),
                         Text("Free Ad",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
                       ],
                     ),
                     SizedBox(height: 5,),
                     Text("Your Ad will go live after check by reviewer",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
                     SizedBox(height: 10,),
                     Row(
                       children: [
                         CustomCheckBox(),
                         SizedBox(width: 10,),
                         Text("Premium",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                         Spacer(),
                         Text("Recommended",style: CustomTextStyle.ultraSmallBoldTextStyle(),)
                       ],
                     ),

                     SizedBox(height: 30,),
                     FullWidthButton(
                       color: AppColors.primaryDarkOrange,
                       borderRadius: BorderRadius.circular(8),
                       title: "Post",
                       onTap: (){Navigator.pop(context);},
                     )
                   ],
                 ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CustomColumn extends StatelessWidget {

  final String title;
  final String hintText;
  final List dropDownItems;
  CustomColumn({this.dropDownItems,this.title,this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(title,style: CustomTextStyle.boldMediumTextStyle(),),
        SizedBox(height: 10,),

        CustomDropDownWidget(dropDownItems: dropDownItems,hintText: hintText,),
        SizedBox(height: 20,),

      ],
    );
  }
}


class CustomColumnWithTextField extends StatelessWidget {

  final String title;
  final String hintText;
  final int maxLines;
  CustomColumnWithTextField({this.title,this.hintText,this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(title,style: CustomTextStyle.boldMediumTextStyle(),),
        SizedBox(height: 10,),

        CustomTextField(
          maxLines: maxLines ?? 1,
          hintText: hintText,
          borderRadius: BorderRadius.circular(8),
        ),
        SizedBox(height: 20,),

      ],
    );
  }
}


class AddImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 15),
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.withOpacity(0.2))
            ),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text("Add Photos")),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 15),
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.withOpacity(0.2))),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 15),
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.withOpacity(0.2))),
          ),
        )
      ],
    );
  }
}


class CustomCheckBoxRow extends StatelessWidget {

  final List items;
  final String title;
  CustomCheckBoxRow({this.items,this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: CustomTextStyle.boldMediumTextStyle(),),
        SizedBox(height: 10,),
        Row(
          children: items.map((e) => Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CustomCheckBox(),
                SizedBox(width: 10,),
                Text(e,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
              ],
            ),
          )).toList(),
        ),
      ],
    );
  }
}


class CustomSquareCheckBoxColumn extends StatefulWidget {

  final String title;
  final List items;
  CustomSquareCheckBoxColumn({this.title,this.items});

  @override
  _CustomSquareCheckBoxColumnState createState() => _CustomSquareCheckBoxColumnState();
}

class _CustomSquareCheckBoxColumnState extends State<CustomSquareCheckBoxColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,style: CustomTextStyle.boldMediumTextStyle(),),
        SizedBox(height: 10,),

        Column(
          children: widget.items.map((e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(children: [
              SizedBox(
                  height: 12,
                  child: CustomSquareCheckBox()),
              Text(e,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),

            ],),
          )).toList(),
        )
      ],
    );
  }
}