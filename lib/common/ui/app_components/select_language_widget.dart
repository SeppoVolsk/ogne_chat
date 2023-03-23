import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kind_owl/common/ui/root_screen_builder.dart';

class SelectLocaleWidget extends StatelessWidget {
  const SelectLocaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
        value: Localizations.localeOf(context),
        items: List.generate(AppLocalizations.supportedLocales.length, (index) {
          return DropdownMenuItem(
            value: AppLocalizations.supportedLocales[index],
            child:
                Text(AppLocalizations.supportedLocales[index].toLanguageTag()),
          );
        }),
        onChanged: (selected) {
          RootScreenBuilder.of(context)?.setUpLocale(selected);
        });
  }
}
