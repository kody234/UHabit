import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class CustomRoundButton extends StatelessWidget {
  const CustomRoundButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44.h,
        width: 44.w,
        margin: EdgeInsets.only(right: 10.w),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryTextColor.withOpacity(0.1)),
        child: Icon(
          icon,
          color: AppColors.primaryTextColor,
        ),
      ),
    );
  }
}
