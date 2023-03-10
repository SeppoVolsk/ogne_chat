import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: CupertinoActivityIndicator(
      radius: 50,
      color: Colors.red.shade400,
    )));
  }
}
