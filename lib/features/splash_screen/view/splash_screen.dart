import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:u_habit/core/constants/app_colors.dart';
import 'package:u_habit/core/constants/app_images.dart';

import '../controller/controller.dart';

class SplashScreen extends StatelessWidget {
  static String path = '/Splash';
  SplashScreen({Key? key}) : super(key: key);
  var controller = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 96.h),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppImages.imSplashScreen,
                ),
                fit: BoxFit.cover)),
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                Text(
                  'WELCOME TO\nMonumental\nhabits',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 40.sp,
                      color: AppColors.primaryTextColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
