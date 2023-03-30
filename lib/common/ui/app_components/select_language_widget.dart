import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kind_owl/common/ui/root_screen_builder.dart';

class SelectLanguageWidget extends StatefulWidget {
  const SelectLanguageWidget({Key? key}) : super(key: key);

  @override
  State<SelectLanguageWidget> createState() => _SelectLanguageWidgetState();
}

class _SelectLanguageWidgetState extends State<SelectLanguageWidget> {
  Locale? _selectedLocale;
  static const _langs = AppLocalizations.supportedLocales;

  @override
  void initState() {
    _selectedLocale = /*Locale from SharedPreferences or*/ _langs.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<Locale>(
          value: _selectedLocale,
          items: List.generate(_langs.length, (index) {
            return DropdownMenuItem(
              value: _langs[index],
              child: Text(_langs[index].toLanguageTag()),
            );
          }),
          onChanged: (selected) {
            setState(() => _selectedLocale = selected);
            RootScreenBuilder.of(context)?.setUpLocale(selected);
          }),
    );
  }
}
