// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors/colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.name,
      this.height,
      this.width,
      this.color,
      this.size,
      required this.ontap,
      super.key});
  final double? size;
  final String name;
  final double? width;
  final Color? color;
  final double? height;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0, // Add the desired elevation value
      borderRadius: BorderRadius.circular(12.r),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        onTap: ontap,
        child: Container(
          width: width ?? double.infinity,
          height: height ?? 58.h,
          decoration: BoxDecoration(
            color: color ?? orange,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: CustomText(
              name: name,
              size: size ?? 14.sp,
              color: white,
              weightFont: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
