import 'package:flutter/material.dart';
import 'package:test_geet/floating_button/w_floating_button.dart';

class WStack extends StatelessWidget {
  const WStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WFloatingButton(),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.deepPurple,
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.deepPurple.shade400,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.deepPurple.shade200,
              child: const Center(
                child: Text(
                  "Tap",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
