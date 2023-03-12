import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';

import 'package:kind_owl/common/domain/utils/utils.dart';
import 'package:kind_owl/common/ui/app_components/app_loading_widget.dart';
import 'package:kind_owl/common/ui/root_screen_builder.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:l/l.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key, required this.env});
  final String env;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Utils.preloadAllAppValues(env),
        builder: (context, snapshot) {
          late Widget widgetToShow;
          if (snapshot.hasData) {
            widgetToShow = const RootScreenBuilder();
          } else if (snapshot.hasError) {
            widgetToShow = const Text("ERROR");
          } else {
            widgetToShow = const AppLoadingWidget();
          }
          return MultiBlocProvider(providers: [
            BlocProvider(create: (context) => getIt.get<AuthBLoC>())
          ], child: MaterialApp(home: widgetToShow));
        });
  }
}
