import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/error/error_entity.dart';
import 'package:kind_owl/common/ui/app_components/app_loading_widget.dart';
import 'package:kind_owl/common/ui/app_components/app_snack_bar.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/auth/ui/login_screen.dart';
import 'package:kind_owl/feature/auth/ui/register_screen.dart';
import 'package:kind_owl/feature/main/ui/main_screen_builder.dart';
import 'package:l/l.dart';

class RootScreenBuilder extends StatefulWidget {
  const RootScreenBuilder({super.key});

  @override
  State<RootScreenBuilder> createState() => _RootScreenBuilderState();
}

class _RootScreenBuilderState extends State<RootScreenBuilder> {
  List stateList = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBLoC, AuthBlocState>(
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
          l.w(state.runtimeType);
          state.whenOrNull(
            error: (_, error, __) => AppSnackBar.showSnackBarWithError(
              context,
              ErrorEntity.fromException(error),
            ),
          );
        });
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
