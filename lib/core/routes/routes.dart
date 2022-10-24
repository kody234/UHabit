import 'package:get/get.dart';
import 'package:u_habit/features/onboarding/view/onboarding.dart';

import '../../features/splash_screen/view/splash_screen.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(name: SplashScreen.path, page: () => SplashScreen()),
    GetPage(name: OnBoardingScreen.path, page: () => OnBoardingScreen()),
  ];
}
