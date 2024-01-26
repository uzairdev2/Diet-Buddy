// ignore_for_file: prefer_typing_uninitialized_variables, prefer_null_aware_operators

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/Colors/colors.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatefulWidget {
  CustomTextfield({
    required this.hintext,
    this.iconname,
    this.passicon,
    this.showtext,
    this.size,
    this.controller,
    this.onchanged,
    this.ontap,
    this.color,
    this.bgcolor,
    this.vlid,
    this.fontfamily,
    this.iconButton,
    this.textInputType,
    this.isAbsecure = false,
    Key? key,
    this.width,
  }) : super(key: key);
  final String hintext;
  final String? fontfamily;
  TextInputType? textInputType;
  final Widget? iconname;
  final Widget? passicon;
  final showtext;
  final double? width;
  final double? size;
  final Color? color;
  final Color? bgcolor;
  final VoidCallback? ontap;

  String? Function(String?)? vlid;
  Function(String value)? onchanged;

  TextEditingController? controller = TextEditingController();

  final Widget? iconButton;
  bool isAbsecure;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: widget.width ?? 600.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: TextFormField(
        onTap: widget.ontap ?? () {},
        validator: widget.vlid,
        controller: widget.controller,
        onChanged: widget.onchanged,
        keyboardType: widget.textInputType ?? TextInputType.visiblePassword,
        obscureText: widget.isAbsecure,
        style: const TextStyle(fontSize: 18, color: black),
        decoration: InputDecoration(
          suffixIcon: widget.iconButton != null ? widget.iconButton! : null,
          filled: true,
          fillColor: widget.bgcolor ?? white,
          focusColor: widget.bgcolor ?? white,
          hintText: widget.hintext,
          alignLabelWithHint: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: orange, width: 1.w),
            borderRadius: BorderRadius.circular(19.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.bgcolor ?? white, width: 1.0),
            borderRadius: BorderRadius.circular(19.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.bgcolor ?? white, width: 1.0),
            borderRadius: BorderRadius.circular(5.r),
          ),
          hintStyle: TextStyle(
              fontSize: widget.size ?? 14.sp,
              color: widget.color ?? Colors.black,
              fontFamily: widget.fontfamily,
              fontWeight: FontWeight.w400),
          prefixIcon: widget.iconname,
        ),
      ),
    );
  }
}
