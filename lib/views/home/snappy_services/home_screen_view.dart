import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/views/home/snappy_services/task1_view.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SnappyServicesHomeScreen extends StatelessWidget {

  final List _taskList = ["Moving","Cleaning","Driving","Washing","Repairing"];
  final List _taskImages = ["moving.jpg","cleaning.jpeg","driving1.jpg","washing.jpg","repairing.jpeg"];

  appBar(){
    return  Row(
      children: [
        Icon(Icons.menu,color: Colors.black,size: 22,),
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
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(statusBarColor: AppColors.primaryDarkOrange),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: Column(
              children: [

                appBar(),
                SizedBox(height: 15,),

                Container(
                  decoration: BoxDecoration(
                    // color: Colors.grey.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: CustomTextField(
                    borderRadius: BorderRadius.circular(12),
                    hintText: "Describe one task, e.g",
                  ),
                ),
                SizedBox(height: 30,),

                Expanded(
                  child: ListView.builder(
                    itemCount: _taskList.length,
                    itemBuilder: (context,index){
                      return CustomInkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SnappyServicesTask1Screen(title: _taskList[index],)));
                          },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical:10),
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 4,
                                  blurRadius: 8
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/images/${_taskImages[index]}"),),
                              SizedBox(width: 15,),
                              Text("Help ${_taskList[index]}",style: CustomTextStyle.smallBoldTextStyle1(),),
                              Spacer(),
                              Icon(Icons.navigate_next,size: 25,)
                            ],
                          )
                        ),
                      );
                    },
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
