import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    Key? key,
    required this.clicked,
    required this.label,
    required this.onTap,
  }) : super(key: key);
  final bool clicked;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 24.h,
            width: 24.w,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryOrange, width: 2),
                borderRadius: BorderRadius.circular(6.r),
                color: clicked ? AppColors.primaryOrange : Colors.white),
            child: Visibility(
              visible: clicked,
              child: Icon(
                Icons.check_rounded,
                size: 23.sp,
                color: AppColors.primaryTextColor,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 21.w,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff573353)),
        ),
      ],
    );
  }
}
