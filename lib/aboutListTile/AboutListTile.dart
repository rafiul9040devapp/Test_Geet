import 'package:flutter/material.dart';

class WAboutListTile extends StatelessWidget {
  const WAboutListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'))
                  ],
                  title: const Text('Flutter Map'),
                  contentPadding: const EdgeInsets.all(20.0),
                  content: const Text('This is Alert Dialogue'),
                ));
      },
      child: const Text('Show alert dialogue'))),
    );
  }
}
