import 'package:flutter/material.dart';
import 'dart:math';

final randomObj = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomObj.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 300,
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(20),
            textStyle: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          child: const Text(
            "Roll Dice",
          ),
        ),
      ],
    );
  }
}
