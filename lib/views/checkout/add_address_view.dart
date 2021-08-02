import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/controllers/checkout/add_address_controller.dart';
import 'package:client_app1/views/checkout/deliver_to_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_text_field.dart';
import 'package:client_app1/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddAddressView extends StatelessWidget {

  final GlobalKey<FormState> _formKey3 = GlobalKey<FormState>();
  final AddAddressController _addAddressController = Get.put(AddAddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Form(
            key: _formKey3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBarRowWithCustomIconWithNoSpacing(title: "Add Address",),
                SizedBox(height: Get.height*0.045,),

                Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                        itemCount: _addAddressController.categoriesList.length,
                        itemBuilder: (context,index){
                          return AddAddressWidget(
                            index: index,
                            formKey: _formKey3,
                          );
                        },
                    )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


class AddAddressWidget extends StatefulWidget {

  final int index;
  final GlobalKey<FormState> formKey;

  AddAddressWidget({this.index, this.formKey});

  @override
  _AddAddressWidgetState createState() => _AddAddressWidgetState();
}

class _AddAddressWidgetState extends State<AddAddressWidget> with AutomaticKeepAliveClientMixin {

  final AddAddressController _addAddressController = Get.put(AddAddressController());

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [

        Text(_addAddressController.categoriesList[widget.index],style: CustomTextStyle.smallBoldTextStyle1(),),
        SizedBox(height: 10,),
        CustomTextField(
          borderRadius: BorderRadius.circular(5),
          validator: (value){
            if(value.length==0){
              return "This Field cannot be empty";
            }
          },
        ),
        SizedBox(height: Get.height*0.035,),
        widget.index == _addAddressController.categoriesList.length-1 ? FullWidthButton(
          color: AppColors.primaryDarkOrange,
          title: "Add Address",
          borderRadius: BorderRadius.circular(5),
          onTap: (){
            widget.formKey.currentState.validate() ?
                Navigator.push(context, MaterialPageRoute(builder:(context){return DeliverToScreen();})):
                print("InCorrect");
          },
        ): Container()

      ],
    );
  }
}
