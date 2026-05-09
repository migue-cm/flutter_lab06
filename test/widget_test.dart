// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_lab06/main.dart';

void main() {
  testWidgets('Verificar que la app carga el campo de usuario', (WidgetTester tester) async {
    // 1. Carga la aplicación
    await tester.pumpWidget(const PrimeraApp());

    // 2. Verifica que el título del AppBar sea el correcto
    expect(find.text('Primera app Flutter'), findsOneWidget);

    // 3. Verifica que exista el campo con la etiqueta 'Usuario'
    expect(find.text('Usuario'), findsOneWidget);

    // 4. Verifica que no existan elementos del contador antiguo (opcional)
    expect(find.text('0'), findsNothing);
    expect(find.byIcon(Icons.add), findsNothing);
  });
}
