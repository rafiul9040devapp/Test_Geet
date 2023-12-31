import 'package:flutter/material.dart';

class CounterGet extends StatelessWidget {
  const CounterGet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 35.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
