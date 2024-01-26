import 'package:diet_buddy/core/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../core/constants/colors/colors.dart';
import '../../core/constants/images/images.dart';
import '../../core/provider/sign_in_provider.dart';
import '../../core/routes/routes_name.dart';
import '../../core/utils/custom_button.dart';
import '../../core/utils/custom_text.dart';
import '../../core/utils/custom_textfield.dart';
import 'custom widgets/social_icons_widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String email = "";

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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                80.h.ph,
                Image.asset(
                  simpleLogo,
                  height: 61.h,
                  width: 46.w,
                ),
                10.h.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      name: 'Sign in to ',
                      color: black,
                      size: 20.sp,
                      weightFont: FontWeight.w700,
                    ),
                    CustomText(
                      name: 'DIET BUDDY',
                      color: orange,
                      size: 20.sp,
                      weightFont: FontWeight.w700,
                    ),
                  ],
                ),
                CustomText(
                  name: 'Sign in and personalize your',
                  size: 16.sp,
                  weightFont: FontWeight.w400,
                ),
                CustomText(
                  name: 'diet with Ai',
                  size: 16.sp,
                  weightFont: FontWeight.w400,
                ),
                12.h.ph,
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
                12.h.ph,
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
                12.h.ph,
                isPasswordConfirmed == true
                    ? Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              name: 'Confirm Password',
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
                                isAbsecure:
                                    signInProvider.isObscuredConfrimPass,
                                iconname: Image.asset(
                                  lockIcon,
                                  scale: 4,
                                ),
                                iconButton: IconButton(
                                  icon: Icon(
                                    signInProvider.isObscuredConfrimPass
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: grey,
                                  ),
                                  onPressed: () {
                                    signInProvider.toggleObscureConfirmPass();
                                  },
                                ),
                                onchanged: (value) {
                                  confirmpassword = value;
                                },
                                hintext: "************",
                                showtext: true,
                                size: 18,
                              );
                            }),
                          ),
                          12.h.ph,
                        ],
                      )
                    : const SizedBox.shrink(),
                CustomButton(
                  name: 'Sign In',
                  ontap: () {
                    if (email.isEmpty && password.isEmpty) {
                      Fluttertoast.showToast(
                        msg: 'Please Fill The All Feild.',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: orange,
                        textColor: white,
                      );
                    } else {
                      if (confirmpassword == password) {
                        // Password is confirmed, add your sign-in logic here
                        setState(() {
                          isPasswordConfirmed = false;
                        });
                      } else {
                        Fluttertoast.showToast(
                          msg: 'Please confirm your password.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: orange,
                          textColor: white,
                        );
                        setState(() {
                          isPasswordConfirmed = true;
                        });
                      }
                    }
                  },
                  image: arrowRightIcon,
                  color: black,
                  size: 18.sp,
                ),
                16.h.ph,
                isPasswordConfirmed == false
                    ? const SocialIconsWidget()
                    : const SizedBox.shrink(),
                7.h.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      name: 'Don’t have an account? ',
                      color: const Color(0xff676C75),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(RoutesName.SignUpScreen);
                      },
                      child: CustomText(
                        name: 'Sign Up.',
                        color: lightOrange,
                        customUnderline: TextDecoration.underline,
                        decorationColor: lightOrange,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: CustomText(
                    name: 'Forgot Password',
                    color: lightOrange,
                    customUnderline: TextDecoration.underline,
                    decorationColor: lightOrange,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
