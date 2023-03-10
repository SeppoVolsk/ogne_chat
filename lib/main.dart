import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/ui/initial_widget.dart';
import 'package:l/l.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  const env = String.fromEnvironment("env", defaultValue: "prod");
  runApp(const InitialWidget(env: env));
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    final now = DateTime.now();
    final logFormat = '${now.hour}:${now.minute.toString().padLeft(2, '0')}';
    l.i('$logFormat | Current ${change.currentState}');
    l.v2('$logFormat | Next ${change.nextState}');
    super.onChange(bloc, change);
  }
}
