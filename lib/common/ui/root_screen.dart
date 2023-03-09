import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/error/error_entity.dart';
import 'package:kind_owl/common/ui/app_components/app_loader.dart';
import 'package:kind_owl/common/ui/app_components/app_snack_bar.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/auth/ui/login_screen.dart';
import 'package:kind_owl/feature/main/ui/main_screen.dart';
import 'package:l/l.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Text("OK");
        BlocConsumer<AuthBLoC, AuthBlocState>(
            builder: (context, state) => state.maybeMap(
                notAuthenticated: (_) => LoginScreen(),
                authenticated: (_) => const MainScreen(),
                processing: (_) => const AppLoader(),
                orElse: () => LoginScreen()),
            listener: (context, state) {
              state.whenOrNull(
                error: (_, error, __) => AppSnackBar.showSnackBarWithError(
                  context,
                  ErrorEntity.fromException(error),
                ),
              );
            });
  }
}
