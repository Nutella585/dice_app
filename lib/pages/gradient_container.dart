import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

/// Class that implements gradient background for screen.
class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
