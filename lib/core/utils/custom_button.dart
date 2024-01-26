import 'package:diet_buddy/core/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/colors/colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.name,
      this.height,
      this.width,
      this.color,
      this.size,
      required this.ontap,
      this.image,
      super.key});
  final double? size;
  final String name;
  final double? width;
  final Color? color;
  final double? height;
  final VoidCallback ontap;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0, // Add the desired elevation value
      borderRadius: BorderRadius.circular(16.r),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        onTap: ontap,
        child: Container(
          width: width ?? double.infinity,
          height: height ?? 48.h,
          decoration: BoxDecoration(
            color: color ?? orange,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  name: name,
                  size: size ?? 14.sp,
                  color: white,
                  weightFont: FontWeight.w700,
                ),
                16.w.pw,
                if (image != null)
                  Image.asset(
                    image!,
                    height: 24.h,
                    width: 24.w,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
