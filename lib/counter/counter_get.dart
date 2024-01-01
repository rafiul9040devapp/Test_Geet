import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_geet/counter/counter_controller.dart';

class CounterGet extends StatelessWidget {
  const CounterGet({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: FloatingActionButton(
                backgroundColor: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: controller.increment,
                child: const Icon(
                  Icons.add,
                  size: 100.0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => Card(
                color: Colors.lightBlueAccent.shade200,
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Center(
                    child: Text(
                      controller.count.toString(),
                      style: const TextStyle(
                          fontSize: 70, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              width: 100,
              child: FloatingActionButton(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: controller.decrement,
                child: const Icon(
                  Icons.remove,
                  size: 100.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
