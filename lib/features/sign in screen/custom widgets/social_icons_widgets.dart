import 'package:diet_buddy/core/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/colors/colors.dart';
import '../../../core/constants/images/images.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(16.r),
          radius: 16.r,
          onTap: () {},
          child: Container(
            height: 56.h,
            width: 56.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(width: 1.5.w, color: lightGrey2)),
            child: Image.asset(
              instaIcon,
              scale: 2.5,
            ),
          ),
        ),
        8.w.pw,
        InkWell(
          borderRadius: BorderRadius.circular(16.r),
          radius: 16.r,
          onTap: () {},
          child: Container(
            height: 56.h,
            width: 56.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(width: 1.5.w, color: lightGrey2)),
            child: Image.asset(
              fbIcon,
              scale: 2.5,
            ),
          ),
        ),
        8.w.pw,
        InkWell(
          borderRadius: BorderRadius.circular(16.r),
          radius: 16.r,
          onTap: () {},
          child: Container(
            height: 56.h,
            width: 56.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(width: 1.5.w, color: lightGrey2)),
            child: Image.asset(
              linkdlneIcon,
              scale: 2.5,
            ),
          ),
        ),
      ],
    );
  }
}
