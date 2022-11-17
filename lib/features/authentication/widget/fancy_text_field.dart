import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';

class FancyTextField extends StatelessWidget {
  const FancyTextField(
      {Key? key,
      required this.ctr,
      required this.onChange,
      required this.hintText,
      required this.icon,
      this.suffixIcon,
      this.obscure})
      : super(key: key);

  final TextEditingController ctr;
  final VoidCallback onChange;
  final String hintText;
  final IconData icon;
  final Widget? suffixIcon;
  final bool? obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Container(
            height: 56.h,
            width: 50.w,
            margin: EdgeInsets.only(right: 1.5.w),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Center(
              child: Icon(
                icon,
                color: ctr.value.text == ''
                    ? const Color(0xff573353)
                    : AppColors.primaryOrange,
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 57.h,
              child: TextFormField(
                  obscureText: obscure ?? false,
                  onChanged: (u) {
                    onChange();
                  },
                  controller: ctr,
                  style: const TextStyle(color: AppColors.primaryOrange),
                  decoration: InputDecoration(
                    suffixIcon: suffixIcon,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: hintText,
                    hintStyle: const TextStyle(color: Color(0xff573353)),
                    suffixIconConstraints:
                        BoxConstraints.expand(width: 60.w, height: 20.h),
                    suffixStyle:
                        const TextStyle(color: Color(0xff573353), fontSize: 20),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
