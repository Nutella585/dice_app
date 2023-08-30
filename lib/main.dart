import 'package:flutter/material.dart';

import 'package:dice_app/pages/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Dice',
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 88, 0, 255),
            Color.fromARGB(255, 191, 0, 208),
          ],
        ),
      ),
    ),
  );
}
