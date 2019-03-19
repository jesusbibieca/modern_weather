import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modern_weather/main.dart';

void main() {
  testWidgets('MyHomePage was rendered', (WidgetTester tester) async {
    const String _title = 't';
    const String _body = 'b';
    const Key _key = Key('k');

    await tester.pumpWidget(MaterialApp(
        home: const MyHomePage(
      key: _key,
      title: _title,
      body: _body,
    )));

    final StatefulElement homePage = tester.element(find.byKey(_key));
    final Finder widgetTitle = find.text(_title);
    final Finder widgetBody = find.text(_body);

    expect(homePage.renderObject.attached, isTrue);
    expect(widgetTitle, findsOneWidget);
    expect(widgetBody, findsOneWidget);
  });
}
