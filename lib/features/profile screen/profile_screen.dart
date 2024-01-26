import 'package:diet_buddy/core/constants/colors/colors.dart';
import 'package:diet_buddy/core/constants/images/images.dart';
import 'package:diet_buddy/core/utils/custom_text.dart';
import 'package:diet_buddy/core/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom widgets/custom_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(profileDesign),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                60.h.ph,
                Center(
                    child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: const AssetImage(
                    profile,
                  ),
                  radius: 80.r,
                )),
                CustomText(
                  name: 'Jhon Doe',
                  size: 16.sp,
                  weightFont: FontWeight.w700,
                ),
                10.h.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      emailIcon,
                      scale: 4,
                    ),
                    5.w.pw,
                    CustomText(
                      name: 'jhondoe@gmail.com',
                      size: 14.sp,
                      weightFont: FontWeight.w400,
                    ),
                  ],
                ),
                19.h.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      ontap: () {},
                      title: 'Blood Group',
                      subTitle: 'B+',
                    ),
                    CustomContainer(
                      ontap: () {},
                      title: 'Weight',
                      subTitle: '72 kg',
                    ),
                  ],
                ),
                15.h.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      ontap: () {},
                      title: 'Height',
                      subTitle: '155 cm',
                    ),
                    CustomContainer(
                      ontap: () {},
                      title: 'Gender',
                      subTitle: 'Male',
                    ),
                  ],
                ),
                15.h.ph,
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomContainer(
                    ontap: () {},
                    title: 'Date Of Birth',
                    subTitle: '24.10.1996',
                  ),
                ),
                12.h.ph,
                Container(
                  height: 31.h,
                  width: 305.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r), color: grey),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                      name: 'Link social media',
                      size: 14.sp,
                      weightFont: FontWeight.w400,
                      color: white,
                    ),
                  ),
                ),
                12.h.ph,
                Container(
                  height: 40.h,
                  width: 305.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r), color: grey),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              fbIcon,
                              scale: 3,
                            ),
                            10.w.pw,
                            CustomText(
                              name: 'Facebook',
                              size: 14.sp,
                              weightFont: FontWeight.w400,
                              color: white,
                            ),
                          ],
                        ),
                        Image.asset(
                          arrowRightIcon,
                          scale: 4,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
