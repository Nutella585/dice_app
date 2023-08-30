import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:dice_app/buttons/styled_button_text.dart';

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceRoll = 1;

  /// Sets certain dice.
  void rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1; // 1...6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceRoll.png', width: 200),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 17,
              horizontal: 50,
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            backgroundColor: Colors.black38,
            textStyle: const TextStyle(fontSize: 20.0),
          ),
          child: const StyledButtonText('Roll'),
        ),
      ],
    );
  }
}
