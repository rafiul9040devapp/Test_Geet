import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WLottieAnimation extends StatelessWidget {
  const WLottieAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animations/bike.json"),
      ),
    );
  }
}
