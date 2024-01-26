import 'package:diet_buddy/core/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../core/Constants/Colors/colors.dart';
import '../../core/Routes/routes_name.dart';
import '../../core/constants/images/images.dart';
import '../../core/provider/sign_in_provider.dart';
import '../../core/utils/custom_button.dart';
import '../../core/utils/custom_text.dart';
import '../../core/utils/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String username = "";

  String password = "";

  String confirmpassword = "";

  bool isPasswordConfirmed = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(signInBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              70.h.ph,
              Center(
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5.w, color: grey),
                      borderRadius: BorderRadius.circular(27)),
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Image.asset(
                      cameraIcon,
                    ),
                  ),
                ),
              ),
              8.h.ph,
              InkWell(
                onTap: () {},
                child: CustomText(
                  name: 'Choose another image',
                  color: lightOrange,
                  weightFont: FontWeight.w700,
                  size: 16.sp,
                  customUnderline: TextDecoration.underline,
                  decorationColor: orange,
                ),
              ),
              15.h.ph,
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        name: 'Full Name',
                        weightFont: FontWeight.w700,
                        size: 14.sp,
                      ),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomTextfield(
                        bgcolor: textfieldColor,
                        iconname: Image.asset(
                          user,
                          scale: 4,
                        ),
                        onchanged: (value) {
                          password = value;
                        },
                        hintext: "Jhon Doe",
                        showtext: true,
                        size: 18,
                      ),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        name: 'Email Address',
                        size: 14.sp,
                        weightFont: FontWeight.w700,
                      ),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomTextfield(
                        bgcolor: textfieldColor,
                        iconname: Image.asset(
                          emailIcon,
                          scale: 4,
                        ),
                        onchanged: (value) {
                          password = value;
                        },
                        hintext: "makise2001@gmail.co|",
                        showtext: true,
                        size: 18,
                      ),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        name: 'Password',
                        size: 14.sp,
                        weightFont: FontWeight.w700,
                      ),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Consumer<SignInProvider>(
                          builder: (context, signInProvider, _) {
                        return CustomTextfield(
                          bgcolor: textfieldColor,
                          isAbsecure: signInProvider.isObscured,
                          iconname: Image.asset(
                            lockIcon,
                            scale: 4,
                          ),
                          iconButton: IconButton(
                            icon: Icon(
                              signInProvider.isObscured
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: grey,
                            ),
                            onPressed: () {
                              signInProvider.toggleObscure();
                            },
                          ),
                          onchanged: (value) {
                            password = value;
                          },
                          hintext: "************",
                          showtext: true,
                          size: 18,
                        );
                      }),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        name: 'Gender',
                        size: 14.sp,
                        weightFont: FontWeight.w700,
                      ),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomTextfield(
                        bgcolor: textfieldColor,
                        iconname: Image.asset(
                          genderIcon,
                          scale: 4,
                        ),
                        iconButton: Image.asset(
                          dropdownIcon,
                          scale: 4,
                        ),
                        onchanged: (value) {
                          password = value;
                        },
                        hintext: "Male",
                        showtext: true,
                        size: 18,
                      ),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        name: 'Gender',
                        size: 14.sp,
                        weightFont: FontWeight.w700,
                      ),
                    ),
                    8.h.ph,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomTextfield(
                        bgcolor: textfieldColor,
                        iconname: Image.asset(
                          weightIcon,
                          scale: 4,
                        ),
                        onchanged: (value) {
                          password = value;
                        },
                        hintext: "72",
                        showtext: true,
                        size: 18,
                        textInputType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              16.h.ph,
              CustomButton(
                name: 'Sign Up',
                ontap: () {
                  Get.toNamed(RoutesName.ProfileScreen);
                },
                image: arrowRightIcon,
                color: black,
                size: 18.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
