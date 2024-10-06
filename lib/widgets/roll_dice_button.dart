import 'package:flutter/material.dart';

class RollDiceButton extends StatelessWidget {
  const RollDiceButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
            vertical: 16, horizontal: MediaQuery.of(context).size.width / 3),
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 20.0),
        shape: const StadiumBorder(),
      ),
      child: const Text('Roll Dice'),
    );
  }
}
