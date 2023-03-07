import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/auth/ui/login_screen.dart';
import 'package:kind_owl/feature/main/ui/main_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return
        // Text("OK");
        BlocConsumer<AuthBLoC, AuthBlocState>(
            builder: (context, state) => state.maybeMap(
                notAuthenticated: (_) => LoginScreen(),
                authenticated: (_) => const MainScreen(),
                processing: (_) => const Text("Processing..."),
                orElse: () => const Text("Something went wrong")),
            listener: (context, state) {});
  }
}
