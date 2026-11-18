import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('La calculadora actualiza los contadores y el total', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Calculadora de Matias Alcivar'), findsOneWidget);
    expect(find.text('Numero de clicks +'), findsOneWidget);
    expect(find.text('Numero de clicks -'), findsOneWidget);
    expect(find.text('25'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.drag_handle));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('24'), findsOneWidget);
    expect(find.text('25'), findsOneWidget);
  });
}
