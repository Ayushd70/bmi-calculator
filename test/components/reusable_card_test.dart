import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Component', () {
    testWidgets("Loads Reusable Card Widget", (WidgetTester tester) async {
      await tester
          .pumpWidget(MaterialApp(home: ReusableCard(colour: Colors.blue)));

      await tester.pumpAndSettle();

      final gestureResult = find.byType(GestureDetector);
      final containerResult = find.byType(Container);

      expect(gestureResult, findsOneWidget);
      expect(containerResult, findsOneWidget);
    });
  });
}
