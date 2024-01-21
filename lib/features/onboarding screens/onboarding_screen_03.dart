import 'package:diet_buddy/core/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors/colors.dart';
import '../../core/constants/images/images.dart';
import '../../core/utils/custom_button.dart';
import '../../core/utils/custom_text.dart';
import 'custom widgets/circle_container.dart';

class OnBoardingScreen03 extends StatelessWidget {
  const OnBoardingScreen03({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(robot),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: width,
              height: 450.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(onboardingDesign),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      name: 'Chatbot Coach',
                      color: white,
                      weightFont: FontWeight.w700,
                      size: 24.sp,
                    ),
                    10.h.ph,
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CustomText(
                        name:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        color: white,
                        weightFont: FontWeight.w500,
                        size: 16.sp,
                      ),
                    ),
                    34.h.ph,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleContainer(
                          color: white,
                        ),
                        8.w.pw,
                        CircleContainer(
                          color: white,
                        ),
                        8.w.pw,
                        CircleContainer(
                          color: orange,
                        ),
                      ],
                    ),
                    27.h.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          name: 'Skip',
                          ontap: () {},
                          color: orange,
                          height: 40.h,
                          width: 110.w,
                          size: 16.sp,
                        ),
                        CustomButton(
                          name: 'Next',
                          ontap: () {},
                          color: customBlack,
                          height: 40.h,
                          width: 110.w,
                          size: 16.sp,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
