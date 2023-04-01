import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/error/error_entity.dart';
import 'package:kind_owl/common/ui/app_components/app_loading_widget.dart';
import 'package:kind_owl/common/ui/app_components/app_snack_bar.dart';
import 'package:kind_owl/common/ui/app_colors.dart';
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
  Color _currentColor = Color(
      di.prefs.getInt(AppColors.mainColorKey) ?? AppColors.defaultColor.value);
  Locale? _currentLocale = Locale(di.prefs.getString('LanguageCode') ?? 'en');

  void setUpLocale(Locale? newLocale) {
    setState(() => _currentLocale = newLocale);
    di.prefs.setString('LanguageCode', newLocale?.languageCode ?? 'en');
  }

  void setUpColor(Color newColor) {
    setState(() => _currentColor = newColor);
    di.prefs.setInt(AppColors.mainColorKey, _currentColor.value);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: AppColors(mainColor: _currentColor).scheme,
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
