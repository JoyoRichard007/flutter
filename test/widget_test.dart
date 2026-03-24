import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter/main.dart';

void main() {
  testWidgets('App shows loading and message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Vérifie que le titre de l'app bar est présent
    expect(find.text('Flutter + Railway'), findsOneWidget);

    // Vérifie que le texte "Message depuis Railway :" est présent
    expect(find.text('Message depuis Railway :'), findsOneWidget);

    // Attend que la requête HTTP se termine (simulation)
    await tester.pumpAndSettle(const Duration(seconds: 2));

    // Vérifie que le message s'affiche (peut être "Chargement..." ou le vrai message)
    expect(find.text('Chargement...'), findsOneWidget);
  });
}