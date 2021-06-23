import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarRow extends StatelessWidget {

  final String title;
  final bool searchBar;
  CustomAppBarRow({this.title,this.searchBar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          searchBar == null ? Icon(Icons.menu,color: Colors.black,) :
            CustomInkWell(
                onTap: (){Get.back();},
                child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,)),
          Spacer(),
          Text(title,style: CustomTextStyle.appBarTextStyle(),),
          Spacer(),
          searchBar == null ? Icon(Icons.notifications_none,color: Colors.grey,) :
              CustomInkWell(
                onTap: (){},
                child: Icon(Icons.search),
              )
        ],
      ),
    );
  }
}

class CustomAppBarRowWithCustomIcon extends StatelessWidget {

  final String title;
  final Icon icon;
  CustomAppBarRowWithCustomIcon({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          CustomInkWell(
              onTap: (){Get.back();},
              child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,)
          ),
          Spacer(),
          Text(title,style: CustomTextStyle.appBarTextStyle(),),
          Spacer(),
          CustomInkWell(
            onTap: (){},
            child: icon,
          )
        ],
      ),
    );
  }
}

