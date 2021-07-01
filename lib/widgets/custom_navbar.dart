import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/controllers/home/snappy_classified/snappy_classified_home_screen_controller.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_clasified_post_ad.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomBottomNavBar extends StatelessWidget {

  final SnappyClassifiedHomeScreenController _snappyClassifiedHomeScreenController = Get.put(SnappyClassifiedHomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.primaryDarkOrange,
                borderRadius: BorderRadius.only(topRight: Radius.circular(13),topLeft: Radius.circular(13))
            ),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomInkWell(
                    onTap: (){_snappyClassifiedHomeScreenController.navIndex.value=0;},
                    child: Icon(Icons.home,size:25,color:Colors.white)
                ),
                CustomInkWell(
                    onTap: (){_snappyClassifiedHomeScreenController.navIndex.value=1;},
                    child: Icon(Icons.comment_rounded,size:25,color:Colors.white)
                ),
                CustomInkWell(
                    onTap: (){},
                    child: Icon(Icons.person,size:0,color:Colors.white)
                ),
                CustomInkWell(
                    onTap: (){_snappyClassifiedHomeScreenController.navIndex.value=2;},
                    child: Icon(Icons.notifications_active_outlined,size:25,color:Colors.white)
                ),
                CustomInkWell(
                    onTap: (){_snappyClassifiedHomeScreenController.navIndex.value=3;},
                    child: Icon(Icons.person,size:25,color:Colors.white)
                ),
              ],
            ),
          ),
        ),
        CustomInkWell(
          onTap: (){
            Get.to(SnappyClassifiedPostAd());
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(5),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryDarkBlue,
              ),
              child: Icon(Icons.add,color: Colors.white,size: 30,),
            ),
          ),
        )
      ],
    );
  }
}
