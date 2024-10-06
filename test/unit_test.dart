import 'package:dice_app/pages/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final MaterialApp app = MaterialApp(home: DiceRoller());

  group('DiceRoller: Unit tests', () {
    testWidgets('rollDice generates values between 1 and 6',
        (WidgetTester tester) async {
      await tester.pumpWidget(app);
      final diceRollerState =
          tester.state<DiceRollerState>(find.byType(DiceRoller));

      for (int i = 0; i < 100; i++) {
        diceRollerState.rollDice();
        await tester.pump();
        expect(diceRollerState.diceRoll, inInclusiveRange(1, 6));
      }
    });
  });
}
