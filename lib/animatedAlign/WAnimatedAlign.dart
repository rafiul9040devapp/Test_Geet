import 'package:flutter/material.dart';

class WAnimatedAlign extends StatefulWidget {
  const WAnimatedAlign({super.key});

  @override
  State<WAnimatedAlign> createState() => _WAnimatedAlignState();
}

class _WAnimatedAlignState extends State<WAnimatedAlign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          height: 120.0,
          width: double.infinity,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInCirc,
            child: const FlutterLogo(
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
