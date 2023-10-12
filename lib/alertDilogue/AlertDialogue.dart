import 'package:flutter/material.dart';

class AlertDialogue extends StatelessWidget {
  const AlertDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Alert Dialogue'),
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) => const AboutDialog(
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'Legalese',
              applicationName: 'About Dialogue',
              applicationVersion: 'version 1.2.0',
              children: [
                Text('This App is created my RHB')
              ],
            ),
          );
        },
      ),
    );
  }
}
