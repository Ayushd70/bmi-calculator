import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Loads Component', () {
    testWidgets('round icon button', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: RoundIconButton(
              icon: Icons.settings,
              onPressed: () {
                print('Test');
              }),
        ),
      );

      await tester.pumpAndSettle();
      final iconResult = find.byType(Icon);
      final rawMaterialButtonResult = find.byType(RawMaterialButton);
      expect(iconResult, findsOneWidget);
      expect(rawMaterialButtonResult, findsOneWidget);
    });
  });
}
