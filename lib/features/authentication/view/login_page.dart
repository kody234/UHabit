import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:u_habit/core/constants/app_colors.dart';

import '../../../core/constants/app_images.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.imSplashScreenBlur,
              ),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.sp,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 44.h,
                    width: 44.w,
                    margin: EdgeInsets.only(right: 10.w),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryTextColor.withOpacity(0.1)),
                    child: const Icon(
                      Icons.question_mark,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 209.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
