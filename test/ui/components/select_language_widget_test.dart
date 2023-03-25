import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kind_owl/common/ui/app_components/select_language_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  testWidgets(
      'When select new language in '
      'SelectLanguageWidget', (tester) async {
    Locale? currentAppLocale;
    late BuildContext pageContext;

    await tester.pumpWidget(
      MaterialApp(
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Builder(builder: (context) {
            pageContext = context;
            return const SelectLanguageWidget();
          }),
        ),
      ),
    );

    currentAppLocale = Localizations.localeOf(pageContext);
    debugPrint(currentAppLocale.toLanguageTag());
    // Находим кнопку по типу
    final button = find.byType(DropdownButton<Locale>);

    // Убеждаемся, что кнопка одна
    expect(button, findsOneWidget);

    // Проверяем, что отображаемое на кнопке значение соответствует текущей локали

    expect(find.text(currentAppLocale.toLanguageTag()), findsOneWidget);

    // Тапаем по кнопке
    await tester.tap(button);

    /// Дожидаемся чтобы UI стал статичным, закончилась анимация раскрытия
    /// Вызываем после любого взаимодействия с пользователем
    await tester.pumpAndSettle();

    /* Проверяем, что в открывшемся списке есть определенная локаль.
       Особенность DropDowNButton:
       после открытия меню у нвс будет 2 виджета с названиями локалей
       - один в в индекс стеке и второй в меню,
       тапаем последний, тот что в меню       
    */

    const pickLocale = 'fi';
    final selectNewLocale = find.text(pickLocale);
    expect(selectNewLocale, findsWidgets);

    await tester.tap(selectNewLocale.last);
    await tester.pumpAndSettle();

    // Проверяем, что отображаемое на кнопке значение соответствует выбранной локали
    expect(find.text(pickLocale), findsOneWidget);
  });
}
