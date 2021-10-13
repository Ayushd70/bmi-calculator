import 'package:bmi_calculator/components/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Loads Component', () {
    testWidgets('icon content', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: IconContent(icon: Icons.settings, label: 'Test'),
      ));

      await tester.pumpAndSettle();

      final result = find.text('Test');
      final iconResult = find.byType(Icon);

      expect(result, findsOneWidget);
      expect(iconResult, findsOneWidget);
    });
  });
}
