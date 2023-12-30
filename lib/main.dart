import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_geet/app_theme/gradiant_theme.dart';
import 'package:test_geet/bmi_calculator/bmi_screen.dart';
import 'package:test_geet/data_table/balance_history.dart';
import 'package:test_geet/list_view_column/wlistview_column.dart';
import 'package:test_geet/responsive_layout/desktop_scaffold.dart';
import 'package:test_geet/responsive_layout/mobile_scaffold.dart';
import 'package:test_geet/responsive_layout/responsive_layout.dart';
import 'package:test_geet/responsive_layout/tablet_scaffold.dart';
import 'package:test_geet/wlottieanimation/wlottieanimation.dart';

import 'floating_button/w_floating_button.dart';

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

      home: const BMIScreen(),
      // home: const ResponsiveLayout(
      //   mobileScaffold: MobileScaffold(),
      //   tabletScaffold: TabletScaffold(),
      //   desktopScaffold: DesktopScaffold(),
      // ),
    );
  }
}
