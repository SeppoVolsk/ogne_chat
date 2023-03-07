import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';

import 'package:kind_owl/common/domain/utils/utils.dart';
import 'package:kind_owl/common/ui/root_screen.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:l/l.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key, required this.env});
  final String env;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: env == "prod" ? false : true,
      home: Center(
        child: FutureBuilder(
            future: Utils.preloadAllAppValues(env),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return MultiBlocProvider(providers: [
                  BlocProvider(
                      create: (BuildContext context) => getIt.get<AuthBLoC>())
                ], child: RootScreen());
              } else if (snapshot.hasError) {
                return const Text("ERROR");
              }
              return const Text('Loading...');
            }),
      ),
    );
  }
}
