import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:one_button/main.dart';

void main() {
  testWidgets('renders a single button that does nothing', (tester) async {
    await tester.pumpWidget(const OneButtonApp());

    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.text('Press me'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Nothing changed.
    expect(find.text('Press me'), findsOneWidget);
  });
}
