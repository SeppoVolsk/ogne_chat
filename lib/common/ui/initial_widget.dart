import 'package:flutter/material.dart';

import 'package:kind_owl/common/domain/utils/utils.dart';
import 'package:kind_owl/common/ui/root_screen.dart';
import 'package:l/l.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({super.key, required this.env});
  final String env;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: FutureBuilder(
            future: Utils.preloadAllAppValues(env),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return const RootScreen();
              } else if (snapshot.hasError) {
                return const Text("ERROR");
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
