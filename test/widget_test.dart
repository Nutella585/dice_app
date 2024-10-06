import 'package:dice_app/pages/dice_roller.dart';
import 'package:dice_app/widgets/roll_dice_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final MaterialApp app = MaterialApp(home: DiceRoller());

  group('DiceRoller: Widget tests', () {
    testWidgets('initial state displays dice with value 1',
        (WidgetTester tester) async {
      await tester.pumpWidget(app);
      expect(find.byType(Image), findsOneWidget);
      expect(find.image(Image.asset('assets/images/dice-1.png').image),
          findsOneWidget);
    });

    testWidgets('rollDice updates the dice image', (WidgetTester tester) async {
      await tester.pumpWidget(app);
      final diceRollerState =
          tester.state<DiceRollerState>(find.byType(DiceRoller));

      diceRollerState.rollDice();
      await tester.pump();

      expect(find.byType(Image), findsOneWidget);
      expect(
          find.image(
              Image.asset('assets/images/dice-${diceRollerState.diceRoll}.png')
                  .image),
          findsOneWidget);
    });

    testWidgets('floating action button triggers rollDice',
        (WidgetTester tester) async {
      await tester.pumpWidget(app);
      final diceRollerState =
          tester.state<DiceRollerState>(find.byType(DiceRoller));

      await tester.tap(find.byType(RollDiceButton));
      await tester.pump();

      expect(diceRollerState.diceRoll, inInclusiveRange(1, 6));
    });
  });
}
