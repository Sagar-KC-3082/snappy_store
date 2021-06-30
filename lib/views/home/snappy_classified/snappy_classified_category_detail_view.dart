import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_category_models.dart';
import 'package:client_app1/models/home/snappy_classified/snappy_classified_product_detail_model.dart';
import 'package:client_app1/views/home/snappy_classified/snappy_classified_product_detail_view.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SnappyClassifiedCategoryDetailScreen extends StatelessWidget {

  final String title;
  final List<SnappyClassifiedCategoryModels> snappyClassifiedItems;
  SnappyClassifiedCategoryDetailScreen({this.title,this.snappyClassifiedItems});

  final List<SnappyClassifiedProductDetailModel> _snappyClassifiedProductDetailModel = [
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep","GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car2.jpg"),
    SnappyClassifiedProductDetailModel(name: "Fords Q6845 Gixer Series",location: "New Mumbai",timePosted: "5 hours ago",adType: "Free  Version",condition: "New",brandName: "Suzuki",transmission: "Latest",yearOFReg: "1989/12/06",features: ["GPS","Anti Brake Lock System","Auto Sleep"],description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",locationPhotoUrl: "assets/images/map.png",imageUrl:"assets/images/car3.jpg"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: title,),
              SizedBox(height: 30,),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.primaryDarkBlue
                ),
                padding: EdgeInsets.symmetric(horizontal:0,vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FilteringWidget(title: "Location",),
                    FilteringWidget(title: "Sort",),
                    FilteringWidget(title: "Filters",),
                  ],
                ),
              ),
              SizedBox(height: 30,),

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: snappyClassifiedItems.length,
                  itemBuilder: (context,index){
                    return categoryWidget(snappyClassifiedItems: snappyClassifiedItems[index],snappyClassifiedProductDetailModel: _snappyClassifiedProductDetailModel[index],);
                  },
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}


class FilteringWidget extends StatefulWidget {

  final String title;
  FilteringWidget({this.title});

  @override
  _FilteringWidgetState createState() => _FilteringWidgetState();
}

class _FilteringWidgetState extends State<FilteringWidget> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomInkWell(
          onTap:(){
            setState(() {
              _isTapped = !_isTapped;
            });
            if(_isTapped == true ){
              showDialog<void>(
                context: context,
                builder: (BuildContext dialogContext) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                    child:Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.2),offset: Offset(5,5),
                                blurRadius: 10
                            ),
                          ]
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("SORT BY",style: CustomTextStyle.boldMediumTextStyle(color: Colors.black),),
                          SizedBox(height: 10,),
                          CustomRow(title: "Best Match",),
                          CustomRow(title: "Latest Posted",),
                          CustomRow(title: "Lowest Price",),
                          CustomRow(title: "Highest Price",),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
          child: Container(
            height: 20,width: 20,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white.withOpacity(0.5)),
            child: _isTapped == true ? Icon(Icons.check,size: 15,color: Colors.white,) : Container(),
          ),
        ),
        SizedBox(width: 10,),
        Text(widget.title,style: CustomTextStyle.smallTextStyle1(color: Colors.white),),
        SizedBox(width: 15,),
        Container(height: 25,width: 1,color: Colors.white.withOpacity(0.5)),
      ],
    );
  }
}


class CustomRow extends StatelessWidget {
  final String title;
  CustomRow({this.title});
  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){Get.back();},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(title,style: CustomTextStyle.mediumTextStyle(color: Colors.black),),
      ),
    );
  }
}




class categoryWidget extends StatefulWidget {

  final SnappyClassifiedCategoryModels snappyClassifiedItems;
  final SnappyClassifiedProductDetailModel snappyClassifiedProductDetailModel;

  categoryWidget({this.snappyClassifiedItems,this.snappyClassifiedProductDetailModel});

  @override
  _categoryWidgetState createState() => _categoryWidgetState();
}

class _categoryWidgetState extends State<categoryWidget> {

  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
              CustomInkWell(
                onTap: (){Get.to(SnappyClassifiedProductDetailPageScreen(snappyClassifiedProductDetailModel:widget.snappyClassifiedProductDetailModel,));},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(widget.snappyClassifiedItems.imageUrl,width: Get.width*0.3,height: Get.height*0.18,fit: BoxFit.cover,),
                ),
              ),
              SizedBox(width: 15,),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.snappyClassifiedItems.name,style: CustomTextStyle.boldMediumTextStyle(),),
                    SizedBox(height: 10,),
                    Text("\$ ${widget.snappyClassifiedItems.price}",style: CustomTextStyle.smallTextStyle1(),),
                    SizedBox(height:2,),
                    Text(widget.snappyClassifiedItems.location,style: CustomTextStyle.smallTextStyle1(),),
                    SizedBox(height:2,),
                    Text(widget.snappyClassifiedItems.days,style: CustomTextStyle.smallTextStyle1(),),

                    Row(
                      children: [
                        Expanded(child: Text(widget.snappyClassifiedItems.days)),
                        CustomInkWell(
                            onTap: (){
                              setState(() {
                                _isLiked = !_isLiked;
                              });
                            },
                            child:_isLiked == true ?  Icon(Icons.favorite,color: Colors.red,size: 20) :  Icon(Icons.favorite_border,color:Colors.grey,size: 20,)
                        )
                      ],
                    )

                  ],
                ),
              ),
          SizedBox(width: 15,)
        ],
      ),
    );
  }
}



