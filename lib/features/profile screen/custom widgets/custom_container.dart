import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Constants/Colors/colors.dart';
import '../../../core/constants/images/images.dart';
import '../../../core/utils/custom_text.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  String title;
  String subTitle;
  VoidCallback? ontap;
  CustomContainer({
    required this.title,
    required this.subTitle,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: ontap,
      child: Container(
        width: 140,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: lightOrange),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    name: title,
                    size: 14.sp,
                    weightFont: FontWeight.w400,
                  ),
                  Image.asset(
                    greaterIcon,
                    scale: 3,
                  )
                ],
              ),
              CustomText(
                name: subTitle,
                color: lightOrange,
                size: 14.sp,
                weightFont: FontWeight.w700,
              )
            ],
          ),
        ),
      ),
    );
  }
}
