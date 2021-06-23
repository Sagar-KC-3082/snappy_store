import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddItemWidget extends StatefulWidget {

  final String imageUrl;
  final String title1;
  final String title2;
  final String price;

  AddItemWidget({this.title1,this.price,this.imageUrl,this.title2});


  @override
  _AddItemWidgetState createState() => _AddItemWidgetState();
}

class _AddItemWidgetState extends State<AddItemWidget> {
  bool pressed = false;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            Image.asset(widget.imageUrl,height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title1,style: CustomTextStyle.mediumTextStyle()),
                Text(widget.title2,style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.grey)),
                SizedBox(height: 5,),
                Text(widget.price,style: CustomTextStyle.smallBoldTextStyle1()),
              ],
            ),
            Spacer(),

            pressed==false ?
            InkWell(
              onTap: (){
                setState(() {
                  pressed = true;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:25,vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Add",style:  CustomTextStyle.ultraSmallBoldTextStyle(color: Colors.white),),
              ),
            ):

            Container(
              child: Row(

                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        if (count >1 ){
                          count--;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      child: Center(child: Text(" - ",style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.white))),
                    ),
                  ),

                  Text(count.toString(),style:  CustomTextStyle.boldMediumTextStyle(color: Colors.black)),

                  InkWell(
                    onTap: (){
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      child: Center(child: Text(" + ",style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
