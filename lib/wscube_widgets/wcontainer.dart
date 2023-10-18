import 'package:flutter/material.dart';

class WContainer extends StatefulWidget {
  const WContainer({super.key});

  @override
  State<WContainer> createState() => _WContainerState();
}

class _WContainerState extends State<WContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WsCube Tech"),
        titleTextStyle: const TextStyle(
            color: Colors.redAccent, fontStyle: FontStyle.italic, fontSize: 25),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 250,
              height: 250,
              color: Colors.amberAccent,
              child: Center(
                  child: TextButton(
                child: const Text(
                  "Just Chill....",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.deepPurpleAccent),
                ),
                onPressed: () {
                  print("Good Morning");
                },
                onLongPress: () {
                  print("Why are you taking too much time.....");
                },
              )),
            ),
          ),
          ElevatedButton(onPressed: () {
            print("Is it working.....");
          }, child: const Text("Testing"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Have fun.....");
        },
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
