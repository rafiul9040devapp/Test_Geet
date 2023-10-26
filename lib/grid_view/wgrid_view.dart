import 'package:flutter/material.dart';

class WGridView extends StatelessWidget {
  const WGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 64,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        itemBuilder: (context, index) => Container(
          color: Colors.redAccent.shade400,
          margin: const EdgeInsets.all(4),
        ),
      ),
    );
  }
}
