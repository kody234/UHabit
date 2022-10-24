import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:u_habit/features/onboarding/view/onboarding.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(OnBoardingScreen.path);
      debugPrint('worked');
    });
  }
}
