import 'package:flutter/material.dart';

class AnimationState with ChangeNotifier {
  late AnimationController controller;
  late Animation<Offset> offsetAnimation;

  AnimationState(TickerProvider vsync) {
    controller = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 3),
    );

    offsetAnimation = Tween<Offset>(
      begin: const Offset(0, -1.0), // Offscreen at the top
      end: Offset.zero, // Center of the screen
    ).animate(controller);

    // Start the animation when the state is initialized
    controller.forward();
  }

  // Add a method to dispose of the animation controller
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
