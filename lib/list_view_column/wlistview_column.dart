import 'package:flutter/material.dart';

class WListViewColumn extends StatelessWidget {
  const WListViewColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/road.jpg",
            fit: BoxFit.scaleDown,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    alignment: Alignment.center,
                    color: Colors.grey.shade300,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Item $index",
                      style: const TextStyle(fontSize: 24),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.grey.shade300,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Item $index",
                    style: const TextStyle(fontSize: 24),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
