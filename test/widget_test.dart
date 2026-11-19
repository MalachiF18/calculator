import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('basic addition still works', (tester) async {
    await tester.pumpWidget(Calculator());
    for (final key in ['2', '+', '3', '=']) {
      await tester.tap(find.text(key));
      await tester.pumpAndSettle();
    }
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, '5');
  });

  testWidgets('zero factorial equals one', (tester) async {
    await tester.pumpWidget(Calculator());
    for (final key in ['0', '!', '=']) {
      await tester.tap(find.text(key));
      await tester.pumpAndSettle();
    }
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, '1');
  });
}
