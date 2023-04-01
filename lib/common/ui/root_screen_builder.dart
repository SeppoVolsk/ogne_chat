import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/error/error_entity.dart';
import 'package:kind_owl/common/ui/app_components/app_loading_widget.dart';
import 'package:kind_owl/common/ui/app_components/app_snack_bar.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/auth/ui/login_screen.dart';
import 'package:kind_owl/feature/auth/ui/register_screen.dart';
import 'package:kind_owl/feature/main/ui/main_screen_builder.dart';
import 'package:l/l.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RootScreenBuilder extends StatefulWidget {
  const RootScreenBuilder({super.key});
  static _RootScreenBuilderState? of(BuildContext context) =>
      context.findAncestorStateOfType<_RootScreenBuilderState>();

  @override
  State<RootScreenBuilder> createState() => _RootScreenBuilderState();
}

class _RootScreenBuilderState extends State<RootScreenBuilder> {
  List stateList = [];
  Color? _currentColor;
  Locale? _currentLocale;
  MaterialColor _createMaterialColor() {
    final int red = _currentColor?.red ?? Colors.red.value;
    final int green = _currentColor?.green ?? Colors.green.value;
    final int blue = _currentColor?.blue ?? Colors.blue.value;

    final Map<int, Color> appShades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };
    return MaterialColor(
        _currentColor?.value ?? Color.fromARGB(120, 120, 120, 120).value,
        appShades);
  }

  MaterialColor get appMaterialColor => _createMaterialColor();
  ColorScheme get appColorScheme =>
      ColorScheme.fromSwatch(primarySwatch: appMaterialColor);

  void setUpLocale(Locale? newLocale) =>
      setState(() => _currentLocale = newLocale);
  void setUpColor(Color? newColor) => setState(() => _currentColor = newColor);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: appColorScheme,
        dialogTheme: const DialogTheme(backgroundColor: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _currentLocale,
      home: Scaffold(
        body: BlocConsumer<AuthBLoC, AuthBlocState>(
            builder: (context, state) => state.maybeMap(
                notAuthenticated: (_) => LoginScreen(),
                authenticated: (_) => const MainScreenBuilder(),
                processing: (_) => const AppLoadingWidget(),
                unregistered: (_) => const AppLoadingWidget(),
                orElse: () => _stayOnRegisteredScreen() == true
                    ? RegisterScreen()
                    : LoginScreen()),
            listener: (context, state) {
              stateList.add(state.runtimeType);
              state.whenOrNull(
                error: (_, error, __) => AppSnackBar.showSnackBarWithError(
                  context,
                  ErrorEntity.fromException(error),
                ),
              );
            }),
      ),
    );
  }

  bool _stayOnRegisteredScreen() {
    final prevStateIndex = stateList.length - 2;
    late final bool result;
    if (prevStateIndex.isNegative) {
      result = false;
    } else {
      result = stateList.elementAt(prevStateIndex).toString() ==
          r'_$UnregisteredAuthBlocState';
      l.s(stateList.elementAt(prevStateIndex));
    }
    l.i('result $result');
    return result;
  }
}
