import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:u_habit/core/constants/app_colors.dart';
import 'package:u_habit/features/splash_screen/view/splash_screen.dart';

import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(414, 896),
      builder: (context, child) => GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            fontFamily: GoogleFonts.raleway().fontFamily,
            primarySwatch: Colors.orange),
        initialRoute: SplashScreen.path,
        smartManagement: SmartManagement.keepFactory,
        getPages: AppPages.appPages,
      ),
    );
  }
}
