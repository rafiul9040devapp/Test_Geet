import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_geet/Controller.dart';
import 'package:test_geet/Other.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text("Click: ${c.count.value}"))),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Get.to(Other()),
            child: const Text("Go To Other")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
