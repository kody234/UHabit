import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 32.sp,
              color: AppColors.primaryTextColor),
        ),
        Image.asset(
          imageUrl,
          height: 487.h,
          width: 350.w,
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
