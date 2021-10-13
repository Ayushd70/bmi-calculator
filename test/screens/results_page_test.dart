import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Results Page', () {
    testWidgets('On pressed', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
            home: ResultsPage(
                interpretation:
                    'You have a higher than normal weight. Try to exercise more.',
                bmiResult: '36',
                resultText: 'Overweight')),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.text('RE-CALCULATE'));

      expect(InputPage(), isA<InputPage>());
    });
  });
}
