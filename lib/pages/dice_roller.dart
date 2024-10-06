import 'package:dice_app/utils/utils.dart';
import 'package:dice_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceRoll = 1;

  void rollDice() {
    setState(() => diceRoll = randomInt(1, 6));
  }

  @override
  Widget build(context) {
    return GradientBackground(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: RollDiceButton(onPressed: rollDice),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Center(
            child: Image.asset(
              'assets/images/dice-$diceRoll.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
