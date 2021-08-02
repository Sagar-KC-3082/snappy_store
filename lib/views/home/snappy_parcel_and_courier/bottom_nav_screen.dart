// import 'package:client_app1/configs/styles/app_colors.dart';
// import 'package:client_app1/configs/styles/custom_text_style.dart';
// import 'package:client_app1/controllers/home/parcel_and_courier/bottom_nav_controller.dart';
// import 'package:client_app1/views/home/snappy_parcel_and_courier/home_screen.dart';
// import 'package:client_app1/views/home/snappy_parcel_and_courier/place_order_view.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// class ParcelAndCourierBottomNavScreen extends StatelessWidget {
//
//   final ParcelAndCourierController _parcelAndCourierController = Get.put(ParcelAndCourierController());
//
//   List _screens = [
//     ParcelHomeScreen(),
//     ParcelAndCourierPlaceOrderScreen(),
//     ParcelHomeScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx((){
//       return Scaffold(
//         body: _screens[_parcelAndCourierController.index.value],
//         backgroundColor: AppColors.backgroundColor,
//         bottomNavigationBar: BottomNavigationBar(
//
//           currentIndex: _parcelAndCourierController.index.value,
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: AppColors.primaryDarkBlue,
//           unselectedItemColor: Colors.grey,
//           selectedLabelStyle: CustomTextStyle.ultraSmallTextStyle(color: AppColors.primaryDarkBlue),
//           unselectedLabelStyle:  CustomTextStyle.ultraSmallTextStyle(color: AppColors.primaryDarkBlue),
//
//           onTap: (value){
//             _parcelAndCourierController.index.value = value;
//           },
//
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.mail_outlined),label: "My Orders"),
//             BottomNavigationBarItem(icon: Icon(Icons.all_inbox),label: "Place Order"),
//             BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
//           ],
//         ),
//
//       );
//     });
//   }
// }
