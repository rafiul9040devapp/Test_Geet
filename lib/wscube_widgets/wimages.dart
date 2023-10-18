import 'package:flutter/material.dart';

class WImages extends StatefulWidget {
  const WImages({super.key});

  @override
  State<WImages> createState() => _WImagesState();
}

class _WImagesState extends State<WImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
              width: 250,
              height: 250,
              child: Image.asset("assets/images/road.jpg"))),
    );
  }
}
