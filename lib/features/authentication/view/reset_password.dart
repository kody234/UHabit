import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:u_habit/core/constants/app_images.dart';
import 'package:u_habit/core/widgets/custom_elevated_button.dart';
import 'package:u_habit/features/authentication/view/sign_up.dart';

import '../../../core/widgets/custom_round_button.dart';
import '../../../core/widgets/custom_text_field.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF3E9),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            CustomRoundButton(
              icon: Icons.arrow_back,
              onTap: () {
                Get.back();
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff573353)),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              AppImages.imResetPassword,
              height: 264.h,
              width: 414.w,
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 240.h,
              width: 370.w,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Enter your registered email below to receive\npassword reset instruction',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff573353)),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const SizedBox(
                    height: 45,
                    child: CustomTextFormField(
                      prefixIcon: Icons.email_outlined,
                      hintText: 'email',
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: CustomElevatedButton(
                      label: 'Send Reset Link',
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Center(
              child: RichText(
                  text: TextSpan(
                      text: 'Remember Password?',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff573353),
                      ),
                      children: <TextSpan>[
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const SignUpPage()),
                      text: ' Login',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff573353),
                      ),
                    ),
                  ])),
            )
          ],
        ),
      )),
    );
  }
}
