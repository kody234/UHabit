import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:u_habit/core/constants/app_colors.dart';
import 'package:u_habit/core/constants/app_icons.dart';
import 'package:u_habit/core/widgets/custom_elevated_button.dart';
import 'package:u_habit/features/authentication/controllers/sign_up_controller.dart';
import 'package:u_habit/features/authentication/view/login_page.dart';
import 'package:u_habit/features/authentication/view/reset_password.dart';

import '../../../core/constants/app_images.dart';
import '../widget/authentication_card.dart';
import '../widget/custom_checkbox.dart';
import '../widget/fancy_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void updateUI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var ctr = Get.put(SignUpController());
    return Scaffold(
      backgroundColor: const Color(0xffFFF3E9),
      body: Obx(() => SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: Image.asset(
                        AppImages.imSignUp,
                        height: 200.h,
                        width: 187.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Center(
                      child: Text(
                        'Create your account',
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryTextColor),
                      ),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    FancyTextField(
                      ctr: ctr.nameController,
                      icon: Icons.person,
                      hintText: 'name',
                      onChange: updateUI,
                    ),
                    FancyTextField(
                      ctr: ctr.emailController,
                      icon: Icons.email_outlined,
                      hintText: 'email',
                      onChange: updateUI,
                    ),
                    FancyTextField(
                      obscure: ctr.obscurePassword.value,
                      ctr: ctr.passwordController,
                      icon: Icons.lock,
                      hintText: 'password',
                      onChange: updateUI,
                      suffixIcon: InkWell(
                        onTap: () {
                          ctr.obscurePassword.value =
                              !ctr.obscurePassword.value;
                          debugPrint(ctr.obscurePassword.value.toString());
                        },
                        child: Text(
                          ctr.obscurePassword.value == true ? 'Show' : 'Hide',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff573353)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomCheckBox(
                      clicked: ctr.keepSignedIn.value,
                      label: 'Keep me signed in',
                      onTap: () {
                        ctr.keepSignedIn.value = !ctr.keepSignedIn.value;
                      },
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    CustomCheckBox(
                      clicked: ctr.emailAboutPricing.value,
                      label: 'Email me about special pricing and more',
                      onTap: () {
                        ctr.emailAboutPricing.value =
                            !ctr.emailAboutPricing.value;
                      },
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    SizedBox(
                        height: 60.h,
                        width: double.infinity,
                        child: CustomElevatedButton(
                            label: 'Create Account', onTap: () {})),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Divider(
                            color: AppColors.primaryTextColor,
                            height: 2,
                          ),
                        ),
                        Text(
                          ' Or sign in with ',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff573353)),
                        ),
                        const Expanded(
                          child: Divider(
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        const Flexible(
                          child: AuthenticationCard(
                            icon: AppIcons.icGoogle,
                            label: 'Google',
                          ),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        const Flexible(
                          child: AuthenticationCard(
                            icon: AppIcons.icFacebook,
                            label: 'Facebook',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: RichText(
                          text: TextSpan(
                              text: 'Already have an account?',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff573353),
                              ),
                              children: <TextSpan>[
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.back(),
                              text: ' Sign In',
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
              ),
            ),
          )),
    );
  }
}
