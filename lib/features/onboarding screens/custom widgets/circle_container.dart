import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CircleContainer extends StatelessWidget {
  CircleContainer({
    required this.color,
    super.key,
  });
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.w, // Adjust the size as needed
      height: 10.h, // Same as width to make it circular
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color, // Set the desired color
      ),
    );
  }
}
