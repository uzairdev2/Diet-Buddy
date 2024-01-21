import 'package:diet_buddy/core/constants/colors/colors.dart';
import 'package:diet_buddy/features/splash%20screen/animation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../core/constants/images/images.dart';
import '../../core/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToSignInScreen();
  }

  // final loginApi = Provider.of<ApiClass>;
  void navigateToSignInScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.offAndToNamed(RoutesName.OnBoarding01);
  }

  @override
  Widget build(BuildContext context) {
    // Find the nearest TickerProviderStateMixin ancestor
    final tickerProvider =
        context.findAncestorStateOfType<TickerProviderStateMixin>();

    if (tickerProvider == null) {
      throw FlutterError(
        'SplashScreen must be placed below a widget that mixes in TickerProviderStateMixin.',
      );
    }

    return ChangeNotifierProvider(
      create: (context) => AnimationState(tickerProvider),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Consumer<AnimationState>(
            builder: (context, animationState, child) {
              return SlideTransition(
                position: animationState.offsetAnimation,
                child: Image.asset(logo, height: 162.h, width: 134.w),
              );
            },
          ),
        ),
      ),
    );
  }
}
