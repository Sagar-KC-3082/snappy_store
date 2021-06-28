import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/controllers/checkout/add_address_controller.dart';
import 'package:client_app1/views/checkout/deliver_to_view.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DeleteAddressConfirmationScreen extends StatelessWidget {

  final int index;
  DeleteAddressConfirmationScreen({this.index});
  final AddAddressController _addAddressController = Get.put(AddAddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/warning.png",height: Get.height*0.15,width: Get.width*0.3,fit: BoxFit.cover,),
            Text("Confirmation",style: CustomTextStyle.ultraBoldTextStyle(),),
            SizedBox(height: 10,),
            Text("Are you sure you wanna delete address",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
            SizedBox(height: 20,),
            FullWidthButton(
              color: AppColors.primaryDarkOrange,
              title: "Delete",
              borderRadius: BorderRadius.circular(5),
              onTap: (){
                _addAddressController.userAddressList.removeAt(index);
                Get.off(DeliverToScreen());},
            ),
            FullWidthButton(
              title: "Cancel",
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey.withOpacity(0.5)),
              onTap: (){Get.back();},
            )
          ],
        ),
      ),
    );
  }

}
