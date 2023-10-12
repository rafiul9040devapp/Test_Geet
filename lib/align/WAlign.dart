import 'package:flutter/material.dart';

class WAlign extends StatelessWidget {
  const WAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 120.0,
          width: double.infinity,
          color: Colors.blueGrey,
          child: const Align(
            alignment: Alignment.topCenter,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
