import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Input page', () {
    testWidgets('is a Stateful Widget', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: InputPage()));

      await tester.pumpAndSettle();

      expect(InputPage(), isA<StatefulWidget>());
    });

    testWidgets('on tapping male reusable card', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: InputPage()));
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('reusableCard_gender_male')));

      await tester.pumpAndSettle();

      expect(find.text('MALE'), findsOneWidget);
    });

    testWidgets('on tapping female reusable card', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: InputPage()));
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('reusableCard_gender_female')));

      await tester.pumpAndSettle();

      expect(find.text('FEMALE'), findsOneWidget);
    });

    testWidgets('on Sliding height slider', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: InputPage()));
      await tester.pumpAndSettle();

      await tester.drag(
          find.byKey(
            Key('reusableCard_height_slider'),
          ),
          const Offset(500.0, 0.0),
          warnIfMissed: true);

      await tester.pumpAndSettle();

      final result = find.byType(Slider);

      expect(result, findsOneWidget);
    });

    testWidgets('on tapping Bottom Button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: InputPage()));

      await tester.pumpAndSettle();

      await tester.tap(find.text('CALCULATE'));

      await tester.pumpAndSettle();

      expect(ResultsPage, ResultsPage);
    });
  });
}
