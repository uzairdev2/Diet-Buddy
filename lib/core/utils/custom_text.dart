// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors/colors.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText({
    required this.name,
    this.size,
    this.weightFont,
    this.alignment,
    this.fontStyle,
    this.height,
    this.color = black,
    this.customUnderline,
    this.decorationColor,
    this.decorationStyle,
    super.key,
  });

  final String name;
  double? size;
  FontWeight? weightFont;
  TextAlign? alignment;
  double? height;
  FontStyle? fontStyle;
  Color? color;
  TextDecoration? customUnderline;
  Color? decorationColor;
  TextDecorationStyle? decorationStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: alignment,
      style: TextStyle(
        fontSize: size ?? 16.sp,
        height: height,
        fontStyle: fontStyle,
        color: color,
        fontWeight: weightFont,
        decoration: customUnderline, // Use customUnderline for decoration
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
      ),
    );
  }
}
