import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_geet/Controller.dart';

class Other extends StatelessWidget {

  Other({super.key});

  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
            child: Text("${c.count.value}")
        )
    );
  }
}
