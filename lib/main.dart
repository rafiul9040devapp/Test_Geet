import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_geet/aboutListTile/AboutListTile.dart';
import 'package:test_geet/alertDilogue/AlertDialogue.dart';
import 'package:test_geet/animatedAlign/WAnimatedAlign.dart';
import 'package:test_geet/wscube_widgets/wcontainer.dart';
import 'package:test_geet/wscube_widgets/wimages.dart';

import 'align/WAlign.dart';
import 'http/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Get Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const WImages());
  }
}
