import 'package:dice_app/pages/dice_roller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Dice',
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    ),
  );
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DiceRoller();
  }
}
