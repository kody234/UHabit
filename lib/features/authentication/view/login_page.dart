import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:u_habit/core/constants/app_colors.dart';
import 'package:u_habit/features/authentication/controllers/login_page_controller.dart';
import 'package:u_habit/features/authentication/view/reset_password.dart';
import 'package:u_habit/features/authentication/view/sign_up.dart';

import '../../../core/constants/app_icons.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/custom_round_button.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../widget/login_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ctr = Get.put(LoginPageController());
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
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CustomRoundButton(
                  icon: Icons.question_mark,
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 160.h,
              ),
              Center(
                child: Text(
                  'WELCOME TO\nMonumental habits',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp,
                      color: AppColors.primaryTextColor),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              LoginContainer(
                imgUrl: AppIcons.icFacebook,
                title: 'Continue with Google',
                onTap: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              LoginContainer(
                imgUrl: AppIcons.icGoogle,
                title: 'Continue with Facebook',
                onTap: () {},
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: Container(
                  width: Get.width,
                  padding: EdgeInsets.only(top: 12.h, right: 20.w, left: 20.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(8.r))),
                  child: Column(
                    children: [
                      Text(
                        'Log in with email',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryTextColor),
                      ),
                      const Divider(),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CustomTextFormField(
                        hintText: 'email',
                        prefixIcon: Icons.email_outlined,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormField(
                        hintText: 'password',
                        prefixIcon: Icons.lock,
                        suffixIcon: Text(
                          'Show',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff573353)),
                        ),
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      SizedBox(
                          height: 60.h,
                          width: Get.width,
                          child: CustomElevatedButton(
                            label: 'Login',
                            onTap: () {},
                          )),
                      SizedBox(
                        height: 13.h,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const ResetPasswordPage());
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff573353)),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Don’t have an account?',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff573353),
                              ),
                              children: <TextSpan>[
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => Get.to(() => const SignUpPage()),
                              text: ' Sign up',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff573353),
                              ),
                            ),
                          ]))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
