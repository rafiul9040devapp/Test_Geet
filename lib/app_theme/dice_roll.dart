import 'dart:math';

import 'package:flutter/material.dart';

var imagePath = 'assets/images/dice-1.png';
var randomNumber = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(
          imagePath,
          width: 250,
        ),
        const SizedBox(height: 25),
        TextButton(
          onPressed: changeTheDiceNumber,
          child: const Text(
            'Roll Dice',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        )
      ],
    );
  }

  void changeTheDiceNumber() {
    setState(
      () {
        var number = randomNumber.nextInt(6) + 1;
        imagePath = 'assets/images/dice-$number.png';
      },
    );
  }
}
