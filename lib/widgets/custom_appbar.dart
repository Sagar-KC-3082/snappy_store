import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/home_screen_view.dart';
import 'package:client_app1/views/search/search_screen.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/cupertino.dart';
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
          searchBar == null ?
          CustomInkWell(
              onTap: (){
                Get.offAll(HomeScreen());
              },
              child: Icon(CupertinoIcons.home,size:20,color: Colors.black,)
          ) :
            CustomInkWell(
                onTap: (){Navigator.pop(context);},
                child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,)),
          Spacer(),
          Text(title,style: CustomTextStyle.appBarTextStyle(),),
          Spacer(),
          searchBar == null ? Icon(Icons.notifications_none,color: Colors.grey,) :
              CustomInkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SearchScreen()));
                  },
                child: Icon(Icons.search),
              )
        ],
      ),
    );
  }
}


class CustomAppBarRowOnlyText extends StatelessWidget {

  final String title;
  final GlobalKey<ScaffoldState> globalKey;
  CustomAppBarRowOnlyText({this.title,this.globalKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          SizedBox(width: 5),
          CustomInkWell(
              onTap: (){
                Get.offAll(HomeScreen());
              },
              child: Icon(CupertinoIcons.home,size:20,color: Colors.black,)
          ),
          Spacer(),
          Text(title,style: CustomTextStyle.appBarTextStyle(),),
          Spacer(),
          CustomInkWell(
              onTap: (){
                globalKey.currentState.openEndDrawer();
              },
              child: Icon(Icons.menu,color: Colors.black,)
          ),
        ],
      ),
    );
  }
}


class CustomAppBarRowWithCustomIcon extends StatelessWidget {

  final String title;
  final Icon icon;
  final Function onTap;
  final bool hideBackButton;
  CustomAppBarRowWithCustomIcon({this.title,this.icon,this.onTap,this.hideBackButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
          hideBackButton == true ?
          CustomInkWell(
              onTap: (){
                Get.offAll(HomeScreen());
              },
              child: Icon(CupertinoIcons.home,size:20,color: Colors.black,)
            ) :
          CustomInkWell(
              onTap: (){Navigator.pop(context);},
              child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,)
            ),
          Spacer(),
          Text(title,style: CustomTextStyle.appBarTextStyle(),),
          Spacer(),
          icon == null ? Container() :
                CustomInkWell(
                  onTap: onTap,
                  child: icon,
                )
        ],
      ),
    );
  }
}


class CustomAppBarRowWithCustomIconWithNoSpacing extends StatelessWidget {

  final String title;
  final Icon icon;
  final Function onTap;
  final bool hideBackButton;
  CustomAppBarRowWithCustomIconWithNoSpacing({this.hideBackButton,this.title,this.icon,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        children: [
         hideBackButton==true? Container() :
         CustomInkWell(
             onTap: (){Navigator.pop(context);},
             child: Icon(Icons.arrow_back_ios,color: Colors.grey,size: 18,)
         ),
          SizedBox(width:5,),
          Text(title,style: CustomTextStyle.appBarTextStyle(),),
          Spacer(),
          icon == null ? Container() :
          CustomInkWell(
            onTap: onTap,
            child: icon,
          )
        ],
      ),
    );
  }
}



class CustomColorFullAppBar extends StatelessWidget {

  final String title;
  CustomColorFullAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: AppColors.primaryDarkOrange,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
      ),
      child: Center(
        child: Text(title,style: CustomTextStyle.appBarTextStyle(color: Colors.white),),
      ),
    );
  }
}


