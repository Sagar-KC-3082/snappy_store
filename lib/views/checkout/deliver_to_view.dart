import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/controllers/checkout/add_address_controller.dart';
import 'package:client_app1/views/checkout/add_address_view.dart';
import 'package:client_app1/views/checkout/delete_address_confirmation_view.dart';
import 'package:client_app1/views/checkout/payment_method_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliverToScreen extends StatelessWidget {

  final AddAddressController _addAddressController = Get.put(AddAddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: Column(
              children: [
                CustomAppBarRowWithCustomIconWithNoSpacing(title: "Deliver to",icon: Icon(Icons.add,color: Colors.blue,),onTap: (){Get.to(AddAddressView());},),
                SizedBox(height: 20,),

                Expanded(
                    child: ListView.builder(
                        itemCount: _addAddressController.userAddressList.length,
                        itemBuilder: (context,index){
                          return CustomInkWell(
                            onTap: (){
                              _addAddressController.addressSelectedIndex.value = index;
                            },
                            child: Obx((){
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: _addAddressController.addressSelectedIndex.value == index? Border.all(color: AppColors.primaryDarkBlue) : null,
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
                                margin:  EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_addAddressController.userAddressList[index].name,style: CustomTextStyle.smallBoldTextStyle1(),),
                                    SizedBox(height:12,),
                                    Text(_addAddressController.userAddressList[index].address,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
                                    SizedBox(height: 12,),
                                    Text("+${_addAddressController.userAddressList[index].number}".toString(),style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        CustomInkWell(
                                          onTap:(){
                                            Get.to(AddAddressView());
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 12),
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryDarkBlue,
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Center(child: Text("Edit",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),),),
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        CustomInkWell(
                                          onTap: (){
                                            Get.to(DeleteAddressConfirmationScreen(index: index,));
                                          },
                                          child: Icon(Icons.delete_outline,color: Colors.grey,size: 25,),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            })
                          );
                        }
                    )
                ),

                SizedBox(height: 20),
                FullWidthButton(
                  color: AppColors.primaryDarkOrange,
                  title: "Next",
                  borderRadius: BorderRadius.circular(5),
                  onTap: (){Get.to(PaymentMethod());},
                )

              ],
            ),
          )
      ),
    );
  }
}
