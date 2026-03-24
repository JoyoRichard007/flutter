import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter/main.dart';

void main() {
  testWidgets('App renders without crashing', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());
    
    // Vérifie que l'app a bien construit un MaterialApp
    expect(find.byType(MaterialApp), findsOneWidget);
    
    // Vérifie que le titre de l'app bar existe (avec un timeout)
    await tester.pumpAndSettle();
    expect(find.text('Flutter + Railway'), findsOneWidget);
  });
}