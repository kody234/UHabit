import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:u_habit/core/constants/app_colors.dart';
import 'package:u_habit/core/constants/app_images.dart';
import 'package:u_habit/features/authentication/view/login_page.dart';
import 'package:u_habit/features/onboarding/controllers/onboarding_controller.dart';

import '../../splash_screen/controller/controller.dart';
import '../widgets/onboarding_item.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String path = '/onboarding';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ctr = Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 80.h, left: 32.w, right: 32.w),
        child: Column(
          children: [
            CarouselSlider(
              carouselController: ctr.controller,
              items: const [
                OnboardingItem(
                  title: 'WELCOME TO\nMonumental habits',
                  imageUrl: AppImages.imOnboarding1,
                ),
                OnboardingItem(
                  title: 'CREATE NEW\nHABIT EASILY',
                  imageUrl: AppImages.imOnboarding2,
                ),
                OnboardingItem(
                  title: 'KEEP TRACK OF YOUR\nPROGRESS',
                  imageUrl: AppImages.imOnboarding3,
                ),
                OnboardingItem(
                  title: 'JOIN A SUPPORTIVE\nCOMMUNITY',
                  imageUrl: AppImages.imOnboarding4,
                ),
              ],
              options: CarouselOptions(
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index, got) {
                    debugPrint(index.toString());
                    ctr.carouselIndex.value = index.toDouble();
                  },
                  enableInfiniteScroll: false,
                  aspectRatio: 3 / 4,
                  viewportFraction: 1,
                  pageSnapping: true),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'We CAN',
                  style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp),
                  children: [
                    TextSpan(
                        text: ' HELP YOU',
                        style: TextStyle(
                            color: AppColors.primaryOrange,
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp)),
                    TextSpan(
                        text: ' TO BE A BETTER\nVERSION OF',
                        style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp)),
                    TextSpan(
                        text: ' YOURSELF',
                        style: TextStyle(
                            color: AppColors.primaryOrange,
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp))
                  ]),
            ),
            SizedBox(
              height: 65.h,
            ),
            Obx(() => ctr.carouselIndex.value == 3.0
                ? SizedBox(
                    width: Get.width,
                    height: 60.sp,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.off(LoginPage());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryTextColor),
                      ),
                    ))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.off(LoginPage());
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      DotsIndicator(
                        position: ctr.carouselIndex.value,
                        dotsCount: 4,
                        decorator: DotsDecorator(
                            activeSize: Size.square(15.sp),
                            activeColor: AppColors.primaryTextColor,
                            color: AppColors.primaryOrange),
                      ),
                      TextButton(
                        onPressed: () {
                          ctr.controller.nextPage();
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: AppColors.primaryTextColor,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ))
          ],
        ),
      ),
    );
  }
}
