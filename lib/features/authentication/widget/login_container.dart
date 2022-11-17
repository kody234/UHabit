import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    Key? key,
    required this.title,
    required this.imgUrl,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String imgUrl;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 374.w,
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 9.h),
              child: Image.asset(
                imgUrl,
                fit: BoxFit.cover,
                height: 30.h,
                width: 30.w,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryTextColor),
            )
          ],
        ),
      ),
    );
  }
}
