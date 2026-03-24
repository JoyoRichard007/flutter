import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter/main.dart';

void main() {
  testWidgets('App shows Hello Flutter message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the Hello Flutter text is present
    expect(find.text('Hello Flutter from CI/CD! 🚀'), findsOneWidget);
  });
}