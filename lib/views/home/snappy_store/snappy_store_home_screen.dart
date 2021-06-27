import 'package:client_app1/configs/constants/app_constants.dart';
import 'package:client_app1/configs/styles/app_colors.dart';
import 'package:client_app1/configs/styles/custom_text_style.dart';
import 'package:client_app1/models/common_models/store_detail_model.dart';
import 'package:client_app1/views/home/snappy_store/fashion_screen.dart';
import 'package:client_app1/widgets/custom_appbar.dart';
import 'package:client_app1/widgets/custom_inkwell.dart';
import 'package:client_app1/widgets/custom_slliver_grid.dart';
import 'package:client_app1/widgets/popular_store_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnappyStoreHomeScreen extends StatelessWidget {

  final List _snappyStoreCategoryList = [{"name":"Fashion","imageUrl":"assets/images/cloth.png"},{"name":"Sports","imageUrl":"assets/images/cloth.png"},{"name":"Pharmacy","imageUrl":"assets/images/cloth.png"},{"name":"Electronic & PC Hub","imageUrl":"assets/images/cloth.png"},{"name":"Hardware","imageUrl":"assets/images/cloth.png"},{"name":"Agricultural Products","imageUrl":"assets/images/cloth.png"},{"name":"Pet Supplies","imageUrl":"assets/images/cloth.png"},{"name":"Gift Gallery","imageUrl":"assets/images/cloth.png"},];
  final List<List<StoreDetailModel>> _storeList = [
    [],
    [StoreDetailModel(storeName: "Balaji Store",category: "Sports",stars: "69",rating: "10",detail:null,imageList: ["assets/images/sports1.jpg","assets/images/sports4.jpg","assets/images/sports3.jpg"],menuCategories: ["Bat","Ball","Stump","Helmet","Pad","Gloves"],items: [{"imageUrl":"assets/images/sports5.jpg","title1":"Mrf Bat","title2":"Heavy Wood","price":"99"},{"imageUrl":"assets/images/sports6.jpg","title1":"Cough Syrup","title2":"500 mg Medicine","price":"11"}]),StoreDetailModel(storeName: "New Sports Corner",category: "Sports",stars: "69",rating: "453",detail:null,imageList: ["assets/images/sports2.jpg","assets/images/sports4.jpg","assets/images/sports3.jpg"],menuCategories: ["Bat","Ball","Stump","Helmet","Pad","Gloves"],items: [{"imageUrl":"assets/images/sports5.jpg","title1":"Mrf Bat","title2":"Heavy Wood","price":"99"},{"imageUrl":"assets/images/sports6.jpg","title1":"Addidas Pad","title2":"Classy sports","price":"39"}]),StoreDetailModel(storeName: "MRF Sports",category: "Sports",stars: "69",rating: "54",detail:null,imageList: ["assets/images/sports3.jpg","assets/images/sports4.jpg","assets/images/sports3.jpg"],menuCategories: ["Bat","Ball","Stump","Helmet","Pad","Gloves"],items: [{"imageUrl":"assets/images/sports5.jpg","title1":"Mrf Bat","title2":"Heavy Wood","price":"99"},{"imageUrl":"assets/images/sports6.jpg","title1":"Addidas Pad","title2":"Classy sports","price":"39"}]),StoreDetailModel(storeName: "Addidas Sports",category: "Sports",stars: "69",rating: "23",detail:null,imageList: ["assets/images/sports4.jpg","assets/images/sports4.jpg","assets/images/sports3.jpg"],menuCategories: ["Bat","Ball","Stump","Helmet","Pad","Gloves"],items: [{"imageUrl":"assets/images/sports5.jpg","title1":"Mrf Bat","title2":"Heavy Wood","price":"99"},{"imageUrl":"assets/images/sports6.jpg","title1":"Addidas Pad","title2":"Classy sports","price":"39"}]),],
    [StoreDetailModel(storeName: "Delhi Medical Store",category: "Pharmacy",stars: "69",rating: "10",detail:null,imageList: ["assets/images/pharmacy1.jpg","assets/images/pharmacy4.jpg","assets/images/pharmacy3.jpg"],menuCategories: ["Alopathic","Ayurvedic","Homeopathy"],items: [{"imageUrl":"assets/images/pharmacy5.jpg","title1":"Nimuslide","title2":"Anti Cold Tabs","price":"9"},{"imageUrl":"assets/images/pharmacy6.jpg","title1":"Cough Syrup","title2":"Universal pharmacy","price":"39"}]),StoreDetailModel(storeName: "Madan Pharmacy",category: "Medicine",stars: "69",rating: "453",detail:null,imageList: ["assets/images/pharmacy2.jpg","assets/images/pharmacy4.jpg","assets/images/pharmacy3.jpg"],menuCategories: ["Alopathic","Ayurvedic","Homeopathy"],items: [{"imageUrl":"assets/images/pharmacy5.jpg","title1":"Nimuslide","title2":"Anti Cold Tabs","price":"9"},{"imageUrl":"assets/images/pharmacy6.jpg","title1":"Cough Syrup","title2":"Universal pharmacy","price":"39"}]),StoreDetailModel(storeName: "Medical Hub",category: "Sports",stars: "69",rating: "54",detail:null,imageList: ["assets/images/pharmacy3.jpg","assets/images/pharmacy4.jpg","assets/images/pharmacy3.jpg"],menuCategories: ["Alopathic","Ayurvedic","Homeopathy"],items: [{"imageUrl":"assets/images/pharmacy5.jpg","title1":"Nimuslide","title2":"Anti Cold Tabs","price":"9"},{"imageUrl":"assets/images/pharmacy6.jpg","title1":"Cough Syrup","title2":"Universal pharmacy","price":"39"}]),StoreDetailModel(storeName: "Universal Pharma",category: "Sports",stars: "69",rating: "23",detail:null,imageList: ["assets/images/pharmacy4.jpg","assets/images/pharmacy4.jpg","assets/images/pharmacy3.jpg"],menuCategories: ["Alopathic","Ayurvedic","Homeopathy"],items: [{"imageUrl":"assets/images/pharmacy5.jpg","title1":"Nimuslide","title2":"Anti Cold Tabs","price":"9"},{"imageUrl":"assets/images/pharmacy6.jpg","title1":"Cough Syrup","title2":"Universal pharmacy","price":"39"}]),],
    [StoreDetailModel(storeName: "India Electronics",category: "Gadget",stars: "69",rating: "10",detail:null,imageList: ["assets/images/electronic1.jpg","assets/images/electronic4.jpg","assets/images/electronic3.jpg"],menuCategories: ["Laptop","Mobiles","Charger","PC","Air Conditioner","Fridge"],items: [{"imageUrl":"assets/images/electronic5.jpg","title1":"Sony Headphone","title2":"Pure Bass","price":"229"},{"imageUrl":"assets/images/electronic6.jpg","title1":"Smart Charger","title2":"Universal charger","price":"19"}]),StoreDetailModel(storeName: "Gadget Hubs",category: "Electronics",stars: "69",rating: "453",detail:null,imageList: ["assets/images/electronic2.jpg","assets/images/electronic4.jpg","assets/images/electronic3.jpg"],menuCategories: ["Laptop","Mobiles","Charger","PC","Air Conditioner","Fridge"],items: [{"imageUrl":"assets/images/electronic5.jpg","title1":"Sony Headphone","title2":"Pure Bass","price":"229"},{"imageUrl":"assets/images/electronic6.jpg","title1":"Smart Charger","title2":"Universal charger","price":"19"}]),StoreDetailModel(storeName: "Smart Electronics",category: "Electronics",stars: "69",rating: "54",detail:null,imageList: ["assets/images/electronic3.jpg","assets/images/electronic4.jpg","assets/images/electronic3.jpg"],menuCategories: ["Laptop","Mobiles","Charger","PC","Air Conditioner","Fridge"],items: [{"imageUrl":"assets/images/electronic5.jpg","title1":"Sony Headphone","title2":"Pure Bass","price":"229"},{"imageUrl":"assets/images/electronic6.jpg","title1":"Smart Charger","title2":"Universal charger","price":"19"}]),StoreDetailModel(storeName: "Bright Store",category: "PC  ",stars: "69",rating: "23",detail:null,imageList: ["assets/images/electronic4.jpg","assets/images/electronic4.jpg","assets/images/electronic3.jpg"],menuCategories: ["Laptop","Mobiles","Charger","PC","Air Conditioner","Fridge"],items: [{"imageUrl":"assets/images/electronic5.jpg","title1":"Sony Headphone","title2":"Pure Bass","price":"229"},{"imageUrl":"assets/images/electronic6.jpg","title1":"Smart Charger","title2":"Universal charger","price":"19"}]),],
    [StoreDetailModel(storeName: "Bharat Hardware",category: "Hardware",stars: "69",rating: "10",detail:null,imageList: ["assets/images/hardware1.jpg","assets/images/hardware4.jpg","assets/images/hardware3.jpg"],menuCategories: ["Handheld","Heavy Items","Light Items","Nuts & Bolds"],items: [{"imageUrl":"assets/images/hardware5.jpg","title1":"Hammer","title2":"Hardware","price":"56"},{"imageUrl":"assets/images/hardware6.jpg","title1":"Screw Driver","title2":"Light Item","price":"69"}]),StoreDetailModel(storeName: "Delhi Hardware",category: "Hardware",stars: "69",rating: "69",imageList: ["assets/images/hardware2.jpg","assets/images/hardware1.jpg"],menuCategories: ["Handheld","Heavy Items","Light Items","Nuts & Bolds"],items: [{"imageUrl":"assets/images/hardware5.jpg","title1":"Hammer","title2":"Hardware","price":"56"},{"imageUrl":"assets/images/hardware6.jpg","title1":"Screw Driver","title2":"Light Item","price":"69"}]),StoreDetailModel(storeName: "Hammer Hub",category: "Hardware",stars: "69",rating: "45",imageList: ["assets/images/hardware3.jpg","assets/images/hardware4.jpg"],menuCategories: ["Handheld","Heavy Items","Light Items","Nuts & Bolds"],items: [{"imageUrl":"assets/images/hardware5.jpg","title1":"Hammer","title2":"Hardware","price":"56"},{"imageUrl":"assets/images/hardware6.jpg","title1":"Screw Driver","title2":"Light Item","price":"69"}]),StoreDetailModel(storeName: "Sagar Hardware",category: "Hardware",stars: "69",rating: "54",imageList: ["assets/images/hardware1.jpg","assets/images/hardware1.jpg"],menuCategories: ["Handheld","Heavy Items","Light Items","Nuts & Bolds"],items: [{"imageUrl":"assets/images/hardware5.jpg","title1":"Hammer","title2":"Hardware","price":"56"},{"imageUrl":"assets/images/hardware6.jpg","title1":"Screw Driver","title2":"Light Item","price":"69"}]),],
    [StoreDetailModel(storeName: "Subham Agro Ltd",category: "Agriculture",stars: "69",rating: "10",detail:null,imageList: ["assets/images/agro1.jpg","assets/images/agro4.jpg","assets/images/agro3.jpg"],menuCategories: ["Fertilizers","Manures","Insecticides","Pesticides","Manure","Anit Fungal"],items: [{"imageUrl":"assets/images/agro5.jpg","title1":"Retro Fertilizer","title2":"Pure fertilizers","price":"229"},{"imageUrl":"assets/images/agro6.jpg","title1":"Manure ","title2":"Universal manure","price":"345"}]),StoreDetailModel(storeName: "Agriculture Hubs",category: "Farms",stars: "69",rating: "453",detail:null,imageList: ["assets/images/agro2.jpg","assets/images/agro4.jpg","assets/images/agro3.jpg"],menuCategories: ["Fertilizers","Manures","Insecticides","Pesticides","Manure","Anit Fungal"],items: [{"imageUrl":"assets/images/agro5.jpg","title1":"Retro Fertilizer","title2":"Pure fertilizers","price":"229"},{"imageUrl":"assets/images/agro6.jpg","title1":"Manure ","title2":"Universal manure","price":"345"}]),StoreDetailModel(storeName: "Noida Farm Center",category: "Agriculture",stars: "69",rating: "54",detail:null,imageList: ["assets/images/agro3.jpg","assets/images/agro4.jpg","assets/images/agro3.jpg"],menuCategories: ["Fertilizers","Manures","Insecticides","Pesticides","Manure","Anit Fungal"],items: [{"imageUrl":"assets/images/agro5.jpg","title1":"Retro Fertilizer","title2":"Pure fertilizers","price":"229"},{"imageUrl":"assets/images/agro6.jpg","title1":"Manure ","title2":"Universal manure","price":"345"}]),StoreDetailModel(storeName: "Nature Farm",category: "Agriculture",stars: "69",rating: "23",detail:null,imageList: ["assets/images/agro4.jpg","assets/images/agro4.jpg","assets/images/agro3.jpg"],menuCategories: ["Fertilizers","Manures","Insecticides","Pesticides","Manure","Anit Fungal"],items: [{"imageUrl":"assets/images/agro5.jpg","title1":"Retro Fertilizer","title2":"Pure fertilizers","price":"229"},{"imageUrl":"assets/images/agro6.jpg","title1":"Manure ","title2":"Universal manure","price":"345"}]),],
    [StoreDetailModel(storeName: "Florida Pets Center",category: "Pets",stars: "69",rating: "10",detail:null,imageList: ["assets/images/pet1.jpg","assets/images/pet4.jpg","assets/images/pet3.jpg"],menuCategories: ["Pedigree","Belts","Dog Food","Animal Vaccine","Cage"],items: [{"imageUrl":"assets/images/pet5.jpg","title1":"Pedigree","title2":"Dog Food","price":"23"},{"imageUrl":"assets/images/pet6.jpg","title1":"Belt","title2":"Animal accessories","price":"75"}]),StoreDetailModel(storeName: "Bharti Pet Care",category: "Pet",stars: "69",rating: "453",detail:null,imageList: ["assets/images/pet2.jpg","assets/images/pet4.jpg","assets/images/pet3.jpg"],menuCategories: ["Pedigree","Belts","Dog Food","Animal Vaccine","Cage"],items: [{"imageUrl":"assets/images/pet5.jpg","title1":"Pedigree","title2":"Dog Food","price":"23"},{"imageUrl":"assets/images/pet6.jpg","title1":"Belt","title2":"Animal accessories","price":"75"}]),StoreDetailModel(storeName: "Pet Center",category: "Animals",stars: "69",rating: "54",detail:null,imageList: ["assets/images/pet3.jpg","assets/images/pet4.jpg","assets/images/pet3.jpg"],menuCategories: ["Pedigree","Belts","Dog Food","Animal Vaccine","Cage"],items: [{"imageUrl":"assets/images/pet5.jpg","title1":"Pedigree","title2":"Dog Food","price":"23"},{"imageUrl":"assets/images/pet6.jpg","title1":"Belt","title2":"Animal accessories","price":"75"}]),StoreDetailModel(storeName: "Delhi Animal Care Shop",category: "Pets",stars: "69",rating: "23",detail:null,imageList: ["assets/images/pet4.jpg","assets/images/pet4.jpg","assets/images/pet3.jpg"],menuCategories: ["Pedigree","Belts","Dog Food","Animal Vaccine","Cage"],items: [{"imageUrl":"assets/images/pet5.jpg","title1":"Pedigree","title2":"Dog Food","price":"23"},{"imageUrl":"assets/images/pet6.jpg","title1":"Belt","title2":"Animal accessories","price":"75"}]),],
    [StoreDetailModel(storeName: "Ahuja Gift Center",category: "Cards",stars: "69",rating: "10",detail:null,imageList: ["assets/images/gift1.jpg","assets/images/gift4.jpg","assets/images/gift3.jpg"],menuCategories: ["Cards","Frames","Bokey","Flowers","Chocolates"],items: [{"imageUrl":"assets/images/gift5.jpg","title1":"Greeting Card","title2":"Gifts","price":"11"},{"imageUrl":"assets/images/gift6.jpg","title1":"Wall Clock","title2":"Gifts","price":"121"}]),StoreDetailModel(storeName: "Archives",category: "Gift",stars: "69",rating: "453",detail:null,imageList: ["assets/images/gift2.jpg","assets/images/gift4.jpg","assets/images/gift3.jpg"],menuCategories: ["Cards","Frames","Bokey","Flowers","Chocolates"],items: [{"imageUrl":"assets/images/gift5.jpg","title1":"Greeting Card","title2":"Gifts","price":"11"},{"imageUrl":"assets/images/gift6.jpg","title1":"Wall Clock","title2":"Gifts","price":"121"}]),StoreDetailModel(storeName: "Gift hub",category: "Gifts",stars: "69",rating: "54",detail:null,imageList: ["assets/images/gift3.jpg","assets/images/gift4.jpg","assets/images/gift3.jpg"],menuCategories: ["Cards","Frames","Bokey","Flowers","Chocolates"],items: [{"imageUrl":"assets/images/gift5.jpg","title1":"Greeting Card","title2":"Gifts","price":"11"},{"imageUrl":"assets/images/gift6.jpg","title1":"Wall Clock","title2":"Gifts","price":"121"}]),StoreDetailModel(storeName: "Jamuna Card Shop",category: "Cards and Flowers",stars: "69",rating: "23",detail:null,imageList: ["assets/images/gift4.jpg","assets/images/gift4.jpg","assets/images/gift3.jpg"],menuCategories: ["Cards","Frames","Bokey","Flowers","Chocolates"],items: [{"imageUrl":"assets/images/gift5.jpg","title1":"Greeting Card","title2":"Gifts","price":"11"},{"imageUrl":"assets/images/gift6.jpg","title1":"Wall Clock","title2":"Gifts","price":"121"}]),],
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBarRowWithCustomIcon(title:"Snappy Store",),
                SizedBox(height: 30,),
                
                Container(
                  height: Get.height*0.8,width: Get.width,
                  child: GridView.builder(
                      itemCount: _snappyStoreCategoryList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                        crossAxisCount: 3,height: Get.height*0.17,crossAxisSpacing: 15
                      ),
                      itemBuilder: (context,index){
                        return Center(child: CustomTextIconColumn(
                          storeList: _storeList[index],
                          imageUrl: _snappyStoreCategoryList[index]["imageUrl"],title: _snappyStoreCategoryList[index]["name"],));
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class CustomTextIconColumn extends StatefulWidget {

  final String imageUrl;
  final String title;
  final List<StoreDetailModel> storeList ;
  CustomTextIconColumn({this.imageUrl,this.title,this.storeList});

  @override
  _CustomTextIconColumnState createState() => _CustomTextIconColumnState();
}

class _CustomTextIconColumnState extends State<CustomTextIconColumn> {

  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: ()async{
        setState(() {
          isTapped = !isTapped;
        });
        widget.title == "Fashion" ?
              await Future.delayed(Duration(milliseconds: 200),(){
                Get.to(FashionScreen(),transition: Transition.rightToLeftWithFade);
                setState(() {
                  isTapped = !isTapped;
                });
              }) :
              await Future.delayed(Duration(milliseconds: 200),(){
                Get.to(PopularStoreWidget(itemList: widget.storeList,),transition: Transition.rightToLeftWithFade);
                setState(() {
                  isTapped = !isTapped;
                });
              });

      },
      child: Column(
        children: [
              Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: isTapped ? Colors.blue : Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFEBF0FF))
                  ),
                  child: Image.asset(widget.imageUrl,fit: BoxFit.cover,)),
              SizedBox(height: 10,),
              Text(widget.title,style: CustomTextStyle.smallBoldTextStyle1(color: Colors.grey),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}

