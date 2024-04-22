import 'dart:math';

import 'package:dice_roller_app/custom_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var diceRoll1 = 6;
  var diceRoll2 = 6;

  void rollDice() {
    setState(() {
      diceRoll1 = randomizer.nextInt(6) + 1; // 1-6 dice no.
      diceRoll2 = randomizer.nextInt(6) + 1; // 1-6 dice no.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/dice_$diceRoll1.png',
              width: 160,
            ),
            Image.asset(
              'assets/dice_$diceRoll2.png',
              width: 160,
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black54,
            fixedSize: const Size(180, 40),
          ),
          child: const CustomText('Roll Dice'),
        ),
      ],
    );
  }
}
