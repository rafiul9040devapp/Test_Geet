import 'package:flutter/material.dart';
import 'package:test_geet/app_theme/dice_roll.dart';

class GradiantTheme extends StatelessWidget {
  const GradiantTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange, Colors.pink, Colors.blueAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomRight),
        ),
        child: const Center(child: DiceRoll()),
      ),
    );
  }
}
