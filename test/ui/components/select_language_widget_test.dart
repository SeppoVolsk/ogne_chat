import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kind_owl/common/ui/app_components/select_language_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  testWidgets(
      'When select new language in'
      'SelectLanguageWidget', (widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: SelectLanguageWidget(),
      ),
    ));

    // Находим кнопку по типу
    final button = find.byType(DropdownButton<Locale>);

    // Убеждаемся, что кнопка одна
    expect(button, findsOneWidget);

    // Проверяем, что значение соответствует текущей локали
    //expect(find.text(Localizations.localeOf(context).toLanguageTag())), matcher);

    // Тапаем по кнопке
    await widgetTester.tap(button);

    // Убеждаемся, что после тапа виджет остался
    expect(button, findsOneWidget);
  });
}
