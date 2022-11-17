import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_icons.dart';

class AuthenticationCard extends StatelessWidget {
  const AuthenticationCard({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50.h,
        width: 181,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              fit: BoxFit.cover,
              height: icon == AppIcons.icFacebook ? 40.h : 30.h,
              width: icon == AppIcons.icFacebook ? 40.w : 30.w,
            ),
            Text(
              label,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff573353)),
            ),
          ],
        ),
      ),
    );
  }
}
