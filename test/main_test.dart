import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modern_weather/main.dart';

void main() {
  const String _title = 'Flutter Demo Home Page';
  const String _body = 'body';

  testWidgets('MyApp renders and have a title and a body',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final Finder widgetTitle = find.text('Flutter Demo Home Page');
    final Finder widgetBody = find.text('body');

    expect(widgetTitle, findsOneWidget);
    expect(widgetBody, findsOneWidget);
  });

  testWidgets('MyHomePage was rendered', (WidgetTester tester) async {
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
