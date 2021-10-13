import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Bottom Button', () {
    testWidgets('loads component', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BottomButton(
            buttonTitle: 'Test',
            onTap: () {
              print("test");
            },
          ),
        ),
      );

      await tester.pumpAndSettle();

      var result = find.text('Test');

      expect(result, findsOneWidget);
    });
  });
}
