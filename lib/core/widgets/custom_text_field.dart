import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);
  final String hintText;

  final IconData? prefixIcon;

  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffFFF6ED),
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.primaryOrange),
          suffixIcon: suffixIcon,
          suffix: suffixIcon,
          suffixIconConstraints:
              BoxConstraints.expand(width: 60.w, height: 20.h),
          suffixStyle: const TextStyle(color: Color(0xff573353), fontSize: 20),
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.primaryOrange,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}
