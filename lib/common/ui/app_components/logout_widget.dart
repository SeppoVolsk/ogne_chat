import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          di.popScope;
          BlocProvider.of<AuthBLoC>(context).add(const AuthBlocEvent.logOut());
        },
        icon: const Icon(Icons.exit_to_app));
  }
}
