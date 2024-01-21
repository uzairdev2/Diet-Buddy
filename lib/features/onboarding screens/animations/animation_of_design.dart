import 'package:flutter/material.dart';

class OnBoardingProvider extends ChangeNotifier {
  late AnimationController _controller;
  late Animation<double> _animation;

  OnBoardingProvider(TickerProvider vsync) {
    _controller = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _controller.forward();
  }

  Animation<double> get animation => _animation;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
