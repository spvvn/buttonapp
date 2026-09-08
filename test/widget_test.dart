import 'package:flutter_test/flutter_test.dart';

import 'package:buttonapp/main.dart';

void main() {
  testWidgets('shows an inert button', (WidgetTester tester) async {
    await tester.pumpWidget(const ButtonApp());

    expect(find.text('Press me'), findsOneWidget);

    await tester.tap(find.text('Press me'));
    await tester.pump();

    expect(find.text('Press me'), findsOneWidget);
  });
}